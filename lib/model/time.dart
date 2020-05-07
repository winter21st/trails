import 'package:flutter/material.dart';

class TrailsTimer extends ChangeNotifier {
  Stopwatch _stopwatch = Stopwatch();
  bool isReset = false;

  void start() {
    _stopwatch.start();
    isReset = false;
    notifyListeners();
  }

  void stop() {
    _stopwatch.stop();
    notifyListeners();
  }

  void reset() {
    _stopwatch.reset();
    isReset = true;
    ChangeNotifier();
  }

  String getHour() {
    int hour = _stopwatch.elapsed.inHours;
    return (hour < 10 ? '0$hour' : '$hour');
  }

  String getMinute() {
    int minute = _stopwatch.elapsed.inMinutes % 60;
    return (minute < 10 ? '0$minute' : '$minute');
  }

  String getSecond() {
    int second = _stopwatch.elapsed.inSeconds % 60;
    return (second < 10 ? '0$second' : '$second');
  }

  String getMilliSecond() {
    int milliSecond =
        ((_stopwatch.elapsed.inMilliseconds % 1000) / 10).truncate();
    return (milliSecond < 10 ? '0$milliSecond' : '$milliSecond');
  }

  get isRunning {
    return _stopwatch.isRunning;
  }

  int get elapsed{
    return _stopwatch.elapsed.inMilliseconds;
  }
}
