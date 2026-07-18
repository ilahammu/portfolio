import 'package:get/get.dart';
import 'package:ilham_porto/app/modules/home/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: _Paths.HOME, page: () => const HomeView()),
  ];
}
