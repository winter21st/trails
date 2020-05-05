import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trails/theme/themeModel.dart';
import 'package:trails/utils/dateUtil.dart';

class HorizontalDatePicker extends StatefulWidget {
  final DateTime currentDate;

  const HorizontalDatePicker({Key key, this.currentDate}) : super(key: key);

  @override
  _HorizontalDatePickerState createState() => _HorizontalDatePickerState();
}

class _HorizontalDatePickerState extends State<HorizontalDatePicker> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        DateElement(
            dateTime: widget.currentDate.add(new Duration(days: -3)),
            current: false),
        DateElement(
            dateTime: widget.currentDate.add(new Duration(days: -2)),
            current: false),
        DateElement(
            dateTime: widget.currentDate.add(new Duration(days: -1)),
            current: false),
        DateElement(dateTime: widget.currentDate, current: true),
        DateElement(
            dateTime: widget.currentDate.add(new Duration(days: 1)),
            current: false),
        DateElement(
            dateTime: widget.currentDate.add(new Duration(days: 2)),
            current: false),
        DateElement(
            dateTime: widget.currentDate.add(new Duration(days: 3)),
            current: false),
      ],
    );
  }
}

class DateElement extends StatelessWidget {
  final DateTime dateTime;
  final bool current;

  DateElement({this.dateTime, this.current});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          DateUtil.weekDayShort(dateTime.weekday),
          style: current
              ? Provider.of<ThemeModel>(context)
                  .currentTheme
                  .primaryTextTheme
                  .subtitle1
              : Provider.of<ThemeModel>(context)
                  .currentTheme
                  .primaryTextTheme
                  .subtitle2,
        ),
        SizedBox(height: current ? 5 : 2),
        Text(
          dateTime.day.toString(),
          style: current
              ? Provider.of<ThemeModel>(context)
                  .currentTheme
                  .primaryTextTheme
                  .bodyText1
                  .copyWith(
                    color: Provider.of<ThemeModel>(context).currentTheme.accentColor,
                  )
              : Provider.of<ThemeModel>(context)
                  .currentTheme
                  .primaryTextTheme
                  .bodyText2,
        ),
      ],
    );
  }
}
