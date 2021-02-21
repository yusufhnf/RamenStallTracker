import 'package:flutter/material.dart';
import 'package:ramen_stall_tracker/src/screens/components/rounded_textfield.dart';
import 'package:ramen_stall_tracker/src/utils/app_styles.dart';
import 'package:ramen_stall_tracker/src/viewmodels/pin_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PinViewModel>.reactive(
      viewModelBuilder: () => PinViewModel(),
      onModelReady: (model) => model.initial(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Pin Ramen Location"),
        ),
        body: Stack(
          children: [
            Container(
                margin: AppStyles.paddingScreenAll,
                child: RoundedTextField(
                    label: "Search Address", icon: Icons.map_outlined)),
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Center(
                child: Text("Maps"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
