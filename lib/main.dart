import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_softbook/modules/splashScreen/splashView.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nb_utils/src/extensions/string_extensions.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'extras/constant/AppColor.dart';
import 'extras/constant/SharePrefConstant.dart';
import 'modules/login/login.dart';
import 'modules/login/loginView.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class Controller extends GetxController {
  final storage = GetStorage();

  Widget getPage() {
    storage.writeIfNull(userToken, '');
    storage.writeIfNull(seen, false);
    bool seenOrNot = storage.read(seen);
    String isLoggedIn = storage.read(userToken);
    print(isLoggedIn);
    if (isLoggedIn.isEmptyOrNull)
    {
      return SplashScreen();
    }
    else
    {
      if (!seenOrNot)
      {
        return SplashScreen();
      }
      else
      {
        return SplashScreen();
      }
    }
  }
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(// status bar color
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark
    ));
  }
  @override
  Widget build(BuildContext context)
  {
    WidgetsFlutterBinding.ensureInitialized();
    final controller = Get.put(Controller());
    return GetMaterialApp(
        defaultTransition: Transition.leftToRightWithFade,
        debugShowCheckedModeBanner: false,
        home: LoginEmailScreen());
  }
}
