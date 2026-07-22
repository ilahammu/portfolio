import 'package:get/get.dart';
import 'package:ilham_porto/app/modules/home/home_view.dart';
import 'package:ilham_porto/app/modules/projects/modern_farm_project.dart';
import 'package:ilham_porto/app/modules/projects/vest_project.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: _Paths.HOME, page: () => const HomeView()),
    GetPage(name: _Paths.vestproject, page: () => const VestProject()),
    GetPage(name: _Paths.farmproject, page: () => const ModernFarmProject()),
  ];
}
