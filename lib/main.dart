import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ramen_stall_tracker/src/app/locator.dart';
import 'package:ramen_stall_tracker/src/app/router.gr.dart';
import 'package:ramen_stall_tracker/src/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_services/stacked_services.dart';
import 'src/app/router.gr.dart' as auto_router;

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ramen Stall Tracker',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      navigatorKey: StackedService.navigatorKey,
      // home: AddCardView(), // Used when testing a view
      initialRoute: Routes.homeScreen,
      onGenerateRoute: auto_router.Router().onGenerateRoute,
    );
  }
}
