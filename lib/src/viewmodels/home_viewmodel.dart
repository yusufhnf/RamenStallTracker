import 'package:ramen_stall_tracker/src/app/locator.dart';
import 'package:ramen_stall_tracker/src/app/router.gr.dart';
import 'package:ramen_stall_tracker/src/screens/components/setup_bottom_sheet_ui.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();

  void initial() {
    setBusy(true);
    setBusy(false);
  }

  void delete() {
    print("delete");
  }

  Future showDialogAdd() async {
    SheetResponse dialogResponse = await _bottomSheetService.showCustomSheet(
        variant: BottomSheetType.add, isScrollControlled: true);

    if (dialogResponse?.confirmed) {
      navigatePinScreen();
    }
  }

  Future navigatePinScreen() async {
    await _navigationService.navigateTo(Routes.pinScreen);
  }
}
