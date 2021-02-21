import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ramen_stall_tracker/src/screens/components/loading_mode.dart';
import 'package:ramen_stall_tracker/src/utils/strings.dart';
import 'package:ramen_stall_tracker/src/viewmodels/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) => model.initial(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Ramen Stall Tracker"),
          actions: [
            IconButton(
              tooltip: Strings.labelAdd,
              icon: Icon(
                Icons.add,
              ),
              onPressed: () {
                model.showDialogAdd();
              },
            )
          ],
        ),
        body: model.isBusy
            ? LoadingMode()
            : ListView.separated(
                itemCount: 10,
                shrinkWrap: true,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
                itemBuilder: (BuildContext context, int index) {
                  return Slidable(
                    actionPane: SlidableDrawerActionPane(),
                    actionExtentRatio: 0.25,
                    child: Container(
                      child: ListTile(
                        onTap: () {
                          model.navigatePinScreen();
                        },
                        title: Text("Index $index"),
                        subtitle: Text("Subtitle $index"),
                        trailing: IconButton(
                          icon: Icon(Icons.chevron_right),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    secondaryActions: <Widget>[
                      IconSlideAction(
                        caption: 'Delete',
                        color: Colors.red,
                        icon: Icons.delete,
                        onTap: () {
                          model.delete();
                          model.initial();
                        },
                      ),
                    ],
                  );
                },
              ),
      ),
    );
  }
}
