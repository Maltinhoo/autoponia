import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:page_transition/page_transition.dart';

import 'configure.dart';
import 'modules/edit_plant/edit_plant_page.dart';
import 'modules/edit_settings/edit_settings_page.dart';
import 'modules/home/home_page.dart';
import 'modules/login/login_page.dart';
import 'modules/plant/plant_page.dart';
import 'modules/register_plant/register_plant_page.dart';
import 'modules/register_settings/register_settings_page.dart';
import 'modules/watering_settings/watering_settings_page.dart';
import 'modules/wrapper/wrapper_page.dart';
import 'theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await configure();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: theme,
        home: WrapperPage(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            // case '/':
            //   return PageTransition(
            //       child: WrapperPage(), type: PageTransitionType.fade);
            case '/login':
              return PageTransition(
                  child: LoginPage(), type: PageTransitionType.fade);
            case '/home':
              return PageTransition(
                  child: HomePage(), type: PageTransitionType.fade);

            case '/registerPlant':
              return PageTransition(
                  child: RegisterPlantPage(), type: PageTransitionType.fade);
            case '/plant':
              return PageTransition(
                  child: PlantPage(), type: PageTransitionType.fade);
            case '/wateringSettings':
              return PageTransition(
                  child: WateringSettingsPage(), type: PageTransitionType.fade);
            case '/registerSettings':
              return PageTransition(
                  child: RegisterSettingsPage(), type: PageTransitionType.fade);
            case '/editSettings':
              return PageTransition(
                  child: EditSettingsPage(), type: PageTransitionType.fade);
            case '/editPlant':
              return PageTransition(
                  child: EditPlantPage(), type: PageTransitionType.fade);
            default:
              return null;
          }
        },
      );
}
