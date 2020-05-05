import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trails/theme/themeModel.dart';

class PlayButtonEx extends StatelessWidget {
  final double buttonSize;

  const PlayButtonEx({Key key, this.buttonSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40.0),
      child: Material(
        color: Provider.of<ThemeModel>(context).currentTheme.cardColor,
        child: InkWell(
          onTap: () {
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('Tap'),
            ));
          },
          child: Container(
            padding: EdgeInsets.all(buttonSize),
            decoration: BoxDecoration(
              border: Border.all(color: Provider.of<ThemeModel>(context).currentTheme.accentColor),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow,
              color:
                  Provider.of<ThemeModel>(context).currentTheme.accentColor,
            ),
          ),
        ),
      ),
    );
  }
}
