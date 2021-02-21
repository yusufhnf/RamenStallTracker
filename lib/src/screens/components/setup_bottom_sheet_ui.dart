import 'package:flutter/material.dart';
import 'package:ramen_stall_tracker/src/app/locator.dart';
import 'package:ramen_stall_tracker/src/screens/components/rounded_button.dart';
import 'package:ramen_stall_tracker/src/screens/components/rounded_textfield.dart';
import 'package:ramen_stall_tracker/src/utils/app_styles.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

enum BottomSheetType {
  add,
}
void setupBottomSheetUi() {
  final bottomSheetService = locator<BottomSheetService>();

  final builders = {
    BottomSheetType.add: (context, sheetRequest, completer) => _AddBottomSheet(
          request: sheetRequest,
          completer: completer,
        ),
  };

  bottomSheetService.setCustomSheetBuilders(builders);
}

class _AddBottomSheet extends StatelessWidget {
  final SheetRequest request;

  final Function(SheetResponse) completer;
  const _AddBottomSheet({
    Key key,
    this.request,
    this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppStyles.paddingScreenAll,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Add Ramen Location",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[900],
            ),
          ),
          AppStyles.separateHeightLong,
          RoundedTextField(
              label: "Insert Ramen Restaurant Name",
              icon: Icons.restaurant_outlined),
          AppStyles.separateHeightShort,
          RoundedButton(
            onPress: () {
              completer(SheetResponse(confirmed: true));
            },
            title: "Next".toUpperCase(),
            color: Colors.red,
            filled: true,
          ),
          RoundedButton(
            onPress: () {
              completer(SheetResponse(confirmed: false));
            },
            title: "Cancel".toUpperCase(),
            color: Colors.red,
            filled: false,
          )
        ],
      ),
    );
  }
}
