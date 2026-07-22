part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const vestproject = _Paths.vestproject;
  static const farmproject = _Paths.farmproject;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const vestproject = '/vestproject';
  static const farmproject = '/farmproject';
}
