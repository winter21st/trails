import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trails/screens/home.dart';
import 'package:trails/theme/themeModel.dart';

class Kickoff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Provider.of<ThemeModel>(context, listen: false).currentTheme,
      home: TrailsHome(),
    );
  }
}