import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:ramen_stall_tracker/src/app/locator.config.dart';

final locator = GetIt.instance;

@injectableInit
void setupLocator() => $initGetIt(locator);
