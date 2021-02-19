import 'package:flutter/material.dart';
import 'package:ramen_stall_tracker/src/utils/strings.dart';
import 'package:ramen_stall_tracker/src/viewmodels/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: null,
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Ramen Stall Tracker"),
          actions: [
            IconButton(
              tooltip: Strings.labelAdd,
              icon: Icon(
                Icons.add_circle_outline_outlined,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: ListView.separated(
          itemCount: 10,
          shrinkWrap: true,
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("Index $index"),
              subtitle: Text("Subtitle $index"),
              trailing: IconButton(
                icon: Icon(Icons.chevron_right),
                onPressed: () {},
              ),
            );
          },
        ),
      ),
    );
  }
}
