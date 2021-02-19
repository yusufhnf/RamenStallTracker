import 'package:auto_route/auto_route_annotations.dart';
import 'package:ramen_stall_tracker/src/screens/add_screen.dart';
import 'package:ramen_stall_tracker/src/screens/home_screen.dart';
import 'package:ramen_stall_tracker/src/screens/pin_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: HomeScreen, initial: true),
    MaterialRoute(page: AddScreen),
    MaterialRoute(page: PinScreen),
  ],
)
class $Router {}
