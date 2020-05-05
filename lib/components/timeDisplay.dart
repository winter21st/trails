import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trails/model/time.dart';
import 'package:trails/theme/themeModel.dart';

class TimeDisplay extends StatefulWidget {
  @override
  _TimeDisplayState createState() => _TimeDisplayState();
}

class _TimeDisplayState extends State<TimeDisplay> {
  Timer timer;
  String hour = '00', minute = '00', second = '00', milliSecond = '00';

  @override
  void initState() {
    timer = new Timer.periodic(new Duration(milliseconds: 10), callback);
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    timer = null;
    super.dispose();
  }

  void callback(Timer timer) {
    if (Provider.of<TrailsTimer>(context, listen: false).isRunning) {
      setState(() {
        hour = Provider.of<TrailsTimer>(context, listen: false).getHour();
        minute = Provider.of<TrailsTimer>(context, listen: false).getMinute();
        second = Provider.of<TrailsTimer>(context, listen: false).getSecond();
        milliSecond =
            Provider.of<TrailsTimer>(context, listen: false).getMilliSecond();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TimePiece(time: hour),
              Text(
                ' : ',
                style: Provider.of<ThemeModel>(context)
                    .currentTheme
                    .primaryTextTheme
                    .caption
                    .copyWith(
                      fontSize: 30,
                    ),
              ),
              TimePiece(time: minute),
              Text(
                ' : ',
                style: Provider.of<ThemeModel>(context)
                    .currentTheme
                    .primaryTextTheme
                    .caption
                    .copyWith(
                      fontSize: 30,
                    ),
              ),
              TimePiece(time: second),
              Text(
                ' ',
                style: Provider.of<ThemeModel>(context)
                    .currentTheme
                    .primaryTextTheme
                    .caption
                    .copyWith(
                      fontSize: 30,
                    ),
              ),
              TimePieceMicro(time: milliSecond),
            ],
          ),
        ),
      ),
    );
  }
}

class TimePiece extends StatefulWidget {
  final String time;

  const TimePiece({Key key, this.time}) : super(key: key);

  @override
  _TimePieceState createState() => _TimePieceState();
}

class _TimePieceState extends State<TimePiece> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.time,
      style: Provider.of<ThemeModel>(context)
          .currentTheme
          .primaryTextTheme
          .caption,
    );
  }
}

class TimePieceMicro extends StatefulWidget {
  final String time;

  const TimePieceMicro({Key key, this.time}) : super(key: key);

  @override
  _TimePieceMicroState createState() => _TimePieceMicroState();
}

class _TimePieceMicroState extends State<TimePieceMicro> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.time,
      style: Provider.of<ThemeModel>(context)
          .currentTheme
          .primaryTextTheme
          .caption
          .copyWith(
            fontSize: 30,
          ),
    );
  }
}
