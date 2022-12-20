import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/app/app_constants.dart';
import 'package:flutter_meditation_app/constants/project_items.dart';
import 'package:flutter_meditation_app/core/components/input/input_theme.dart';
import 'package:flutter_meditation_app/product/init/localization/localization_manager.dart';
import 'package:flutter_meditation_app/product/init/navigation/navigation_route.dart';
import 'package:flutter_meditation_app/product/init/navigation/navigation_service.dart';
import 'package:flutter_meditation_app/product/init/notifier/provider_list.dart';
import 'package:flutter_meditation_app/core/components/scroll/custom_scroll_behavior.dart';
import 'package:flutter_meditation_app/view/home/home_view.dart';
import 'package:flutter_meditation_app/view/sign_in/sign_in_view.dart';
import 'package:flutter_meditation_app/view/sign_up_sign_in/sign_up_and_sign_in_view.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await _init();
  runApp(
    MultiProvider(
      providers: [...ApplicationProvider.instance.dependItems],
      child: EasyLocalization(
        supportedLocales: LocalizationManager.instance.supportedLocales,
        path: ApplicationConstants.langAssetPath,
        startLocale: LocalizationManager.instance.enLocale,
        child: const MyApp(),
      ),
    ),
  );
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  //await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: ProjectItems.projectName,
        debugShowCheckedModeBanner: false,
        scrollBehavior: CustomScrollBehavior(),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme: CustomInputTheme().theme(),
        ),
        onGenerateRoute: NavigationRoute.instance.generateRoute,
        navigatorKey: NavigationService.instance.navigatorKey,
        home:const SignInView());
  }
}
