import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trails/components/itemTagChip.dart';
import 'package:trails/components/playButtonEx.dart';
import 'package:trails/components/timeDisplayEx.dart';
import 'package:trails/theme/themeModel.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> tags;
  final TimeDisplayEx time;

  const ItemCard({Key key, this.title, this.description, this.tags, this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Provider.of<ThemeModel>(context).currentTheme.cardColor,
      padding: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 0.0),
      child: Card(
        shadowColor: Provider.of<ThemeModel>(context).currentTheme.primaryColorDark,
        color: Provider.of<ThemeModel>(context).currentTheme.cardTheme.color,
        borderOnForeground: false,
        child: Container(
          decoration: BoxDecoration(
          border: Border.all(color: Provider.of<ThemeModel>(context).currentTheme.primaryColorDark),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                child: PlayButtonEx(buttonSize: 5.0),
              ),
              Flexible(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 6.0, 8.0, 0.0),
                        child: Text(
                          title,
                          overflow: TextOverflow.ellipsis,
                          style: Provider.of<ThemeModel>(context)
                              .currentTheme
                              .primaryTextTheme
                              .bodyText1
                              .copyWith(
                                fontSize: 18,
                              ),
                        ),
                      ),
//                      Padding(
//                        padding: const EdgeInsets.fromLTRB(8.0, 1.0, 8.0, 0.0),
//                        child: Text(
//                          description,
//                          overflow: TextOverflow.ellipsis,
//                          style: Provider.of<ThemeModel>(context)
//                              .currentTheme
//                              .primaryTextTheme
//                              .subtitle1,
//                        ),
//                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 6.0, 8.0, 8.0),
                        child: SizedBox(
                          height: 32.0,
                          child: ListView.builder(
                            itemBuilder: (context, index){
                              return Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: ItemTagChip(tag: tags[index]),
                              );
                            },
                            itemCount: tags.length,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: time,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
