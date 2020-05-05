import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trails/model/time.dart';
import 'package:trails/theme/themeModel.dart';

class TimeDisplayEx extends StatelessWidget {
  final int hour, minute, second;

  const TimeDisplayEx({this.hour, this.minute, this.second});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Row(
        children: <Widget>[
          Text(
            hour.toString().padLeft(2, '0') +
                ':' +
                minute.toString().padLeft(2, '0') +
                ':' +
                second.toString().padLeft(2, '0'),
            style: Provider.of<ThemeModel>(context)
                .currentTheme
                .primaryTextTheme
                .bodyText1.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 19,
            ),
          ),
        ],
      )),
    );
  }
}
