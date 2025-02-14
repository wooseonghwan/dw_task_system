import 'package:dw_system/Screen/login.dart';
import 'package:dw_system/common/globalvar.dart';
import 'package:dw_system/common/uiCommon.dart';
import 'package:dw_system/constants/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  var mainpage = dotenv.env['MAIN'];
  var logLevel = dotenv.env['LOGLEVEL'];

  await GV.init(logLevel as String);





  runApp(MyApp(mainPage: mainpage));
}

class MyApp extends StatelessWidget {
  final String? mainPage;
  const MyApp({super.key, required this.mainPage});

  @override
  Widget build(BuildContext context) {
    GV.pStrg.getHistoryPages().isEmpty ? uiCommon.SpPushPage(context, mainPage!) : 1 == 1;
    PageTransitionsTheme _removeTransitions() {
      return PageTransitionsTheme(
        builders: {
          for (final platform in TargetPlatform.values) platform: const _NoTransitionsBuilder(),
        },
      );
    }

    return MaterialApp(
      key: ValueKey('123mainbase0'),
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},
      ),
      title: 'V-Dashboard',
      theme: ThemeData(pageTransitionsTheme: _removeTransitions()),
      initialRoute: "/${mainPage!}",
      debugShowCheckedModeBanner: false,
      routes: {
        "/$PAGE_LOGIN_PAGE": (context) => const Login(),
        // "/$PAGE_TEST_PAGE": (context) => Background(),
        // "/$PAGE_CHART_PAGE": (context) => const LineChartSample11(),
      },
    );
  }
}

class _NoTransitionsBuilder extends PageTransitionsBuilder {
  const _NoTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T>? route,
    BuildContext? context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget? child,
  ) {
    return child!;
  }
}
