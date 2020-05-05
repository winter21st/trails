import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trails/model/time.dart';

class PlayButton extends StatefulWidget {
  final double buttonSize;

  const PlayButton({Key key, this.buttonSize}) : super(key: key);

  @override
  _PlayButtonState createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var snapToEnd = true;
    var isReset = true;
    var animation = AnimationName.RUNNING_CANCELLED;
    double containerWidth = 200;
    double containerHeight = 100;

    return Consumer<TrailsTimer>(
      builder: (context, value, child) {
        return GestureDetector(
          onTapUp: (tapInfo) {
            var localTouchPosition = (context.findRenderObject() as RenderBox)
                .globalToLocal(tapInfo.globalPosition);
            var leftSideTouched = localTouchPosition.dx < containerHeight / 2;
            var rightSideTouched = localTouchPosition.dx > (containerWidth / 2);
            snapToEnd = false;
            if (value.isRunning) {
              if (leftSideTouched) {
                value.stop();
                isReset = false;
                animation = AnimationName.PAUSED;
              } else if (rightSideTouched) {
                value.reset();
                isReset = true;
                animation = AnimationName.RUNNING_CANCELLED;
              }
            } else if (!value.isRunning && !isReset) {
              if (leftSideTouched) {
                value.start();
                isReset = false;
                animation = AnimationName.RESUME;
              } else if (rightSideTouched) {
                value.reset();
                isReset = true;
                animation = AnimationName.PAUSED_CANCELLED;
              }
            } else if (!value.isRunning && isReset) {
              value.start();
              animation = AnimationName.RUNNING;
            }
          },
          child: Container(
            height: containerHeight,
            width: containerWidth,
            child: FlareActor(
              'assets/animations/Trails.flr',
              animation: chooseAnimation(animation),
              snapToEnd: snapToEnd,
            ),
          ),
        );
      },
    );
  }

  String chooseAnimation(AnimationName animation) {
    switch (animation) {
      case AnimationName.RUNNING:
        return 'Running';
        break;
      case AnimationName.PAUSED:
        return 'Paused';
        break;
      case AnimationName.RESUME:
        return 'Resume';
        break;
      case AnimationName.RUNNING_CANCELLED:
        return 'RunningCancelled';
        break;
      case AnimationName.PAUSED_CANCELLED:
        return 'PausedCancelled';
        break;
      default:
        return 'RunningCancelled';
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

enum AnimationName {
  RUNNING,
  PAUSED,
  RESUME,
  PAUSED_CANCELLED,
  RUNNING_CANCELLED,
}
