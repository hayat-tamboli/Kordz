import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kordz_app/utils/constants.dart';
import 'package:kordz_app/utils/theme_config.dart';
import 'package:kordz_app/view/auth.dart';
import 'package:kordz_app/view/my_insights.dart';
import 'package:kordz_app/view/splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes
      routes: {
        '/authorization': (context) => const Authorization(),
        '/myinsights': (context) => const MyInsights(),
        // '/editprofile': (context) => const EditProfile(),
        // '/aboutus': (context) => const AboutUs(),
        // '/discover': (context) => const DiscoverCommunity(),
        // '/interests': (BuildContext context) => const Addinterests(),
        // '/changeinterests': (BuildContext context) => const ChangeInterests(),
        // '/onboarding/1': (BuildContext context) => const Onboardingpage1(),
        // '/onboarding/2': (BuildContext context) => const Onboardingpage2(),
        // '/onboarding/3': (BuildContext context) => const Onboardingpage3(),
      },
      title: 'Flutter Demo',
      theme: lighttheme,
      home: const KordzApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class KordzApp extends StatefulWidget {
  const KordzApp({Key? key}) : super(key: key);
  @override
  State<KordzApp> createState() => _KordzAppState();
}

class _KordzAppState extends State<KordzApp> {
  startTimeout() {
    return Timer(const Duration(milliseconds: 2200), handleTimeout);
  }

  void handleTimeout() {
    changeScreen();
  }

  changeScreen() async {
    bool? auth = await Constants.retrieveAuthPref();
    if (auth == true) {
      Navigator.pushNamed(context, '/myinsights');
    } else {
      Navigator.pushNamed(context, '/authorization');
      // Navigator.of(context).push(
      //   MaterialPageRoute(builder: (context) => const Onboarding()),
      // );
    }
  }

  @override
  void initState() {
    startTimeout();
    super.initState();
    initialization();
  }

  void initialization() async {
    setState(() {});
    Constants.themeSystemPref();
    startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    return const Splash();
  }
}
