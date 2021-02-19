import 'package:flutter/material.dart';
import 'package:ramen_stall_tracker/src/utils/strings.dart';
import 'package:ramen_stall_tracker/src/viewmodels/add_viewmodel.dart';
import 'package:stacked/stacked.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddViewModel>.reactive(
      viewModelBuilder: () => AddViewModel(),
      onModelReady: null,
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(Strings.labelAdd),
        ),
      ),
    );
  }
}
