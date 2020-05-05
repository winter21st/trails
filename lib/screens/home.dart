import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trails/components/cardList.dart';
import 'package:trails/components/playButton.dart';
import 'package:trails/components/timeDisplay.dart';
import 'package:trails/model/time.dart';
import 'package:trails/theme/themeModel.dart';
import 'package:intl/intl.dart';

class TrailsHome extends StatefulWidget {
  @override
  _TrailsHomeState createState() => _TrailsHomeState();
}

class _TrailsHomeState extends State<TrailsHome> {
  var _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TRAILS',
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Provider.of<ThemeModel>(context, listen: false).isDay
                ? Icon(Icons.brightness_3)
                : Icon(Icons.brightness_7),
            onPressed: () =>
                Provider.of<ThemeModel>(context, listen: false).toggleTheme(),
          ),
        ],
      ),
      body: Ink(
        color: Provider.of<ThemeModel>(context).currentTheme.primaryColorDark,
        child: Column(
          children: <Widget>[
            Container(
              color: Provider.of<ThemeModel>(context).currentTheme.cardColor,
              child: Container(
                decoration: BoxDecoration(
                  color: Provider.of<ThemeModel>(context)
                      .currentTheme
                      .primaryColorDark,
                  border: Border.all(
                    color: Provider.of<ThemeModel>(context)
                        .currentTheme
                        .primaryColorDark,
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: TimeDisplay(),
                      ),
                      Center(
                        child: PlayButton(buttonSize: 15.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Provider.of<ThemeModel>(context).currentTheme.cardColor,
                border: Border.all(
                  color:
                      Provider.of<ThemeModel>(context).currentTheme.cardColor,
                ),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 14.0, 14.0, 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('TODAY',
                              style: Provider.of<ThemeModel>(context)
                                  .currentTheme
                                  .primaryTextTheme
                                  .bodyText1),
                          Text(
                            new DateFormat('EEEE, dd LLL')
                                .format(_selectedDate)
                                .toUpperCase(),
                            style: Provider.of<ThemeModel>(context)
                                .currentTheme
                                .primaryTextTheme
                                .bodyText2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Expanded(
                flex: 1,
                child: Container(
                    color:
                        Provider.of<ThemeModel>(context).currentTheme.cardColor,
                    child: CardList()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
