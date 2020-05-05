import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trails/model/time.dart';
import 'package:trails/theme/themeModel.dart';

import 'kickoff.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeModel>(
          create: (context) => ThemeModel(),
        ),
        ChangeNotifierProvider<TrailsTimer>(
          create: (context) => TrailsTimer(),
        ),
      ],
      child: Kickoff(),
    ),
  );
}
