import 'package:flutter/material.dart';
import 'package:ramen_stall_tracker/src/utils/app_styles.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {@required this.title,
      @required this.color,
      @required this.onPress,
      this.filled});

  final String title;
  final Color color;
  final bool filled;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
          elevation: 0.0,
          splashColor: Colors.white.withOpacity(0.1),
          highlightColor: Colors.white.withOpacity(0.1),
          onPressed: onPress,
          padding: AppStyles.paddingSmallAll,
          color: filled == true ? color : Colors.transparent,
          shape: RoundedRectangleBorder(
            side:
                BorderSide(color: filled == false ? color : Colors.transparent),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            title,
            style: TextStyle(color: filled == false ? color : Colors.white),
          )),
    );
  }
}
