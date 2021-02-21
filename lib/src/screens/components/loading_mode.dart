import 'package:flutter/material.dart';

class LoadingMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(backgroundColor: Colors.black12),
    );
  }
}
