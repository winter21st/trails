import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:trails/theme/themeModel.dart';

class ItemTagChip extends StatelessWidget {
  final String tag;

  const ItemTagChip({this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Provider.of<ThemeModel>(context)
              .currentTheme
              .primaryColorDark,
          border: Border.all(
              color: Provider.of<ThemeModel>(context)
                  .currentTheme
                  .primaryColorDark),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: EdgeInsets.all(5.0),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundColor:
                  Provider.of<ThemeModel>(context).currentTheme.cardColor,
              radius: 2,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              tag,
              style: TextStyle(
                color: Provider.of<ThemeModel>(context)
                    .currentTheme
                    .primaryTextTheme
                    .bodyText1
                    .color,
              ),
            ),
          ],
        ));
  }
}
