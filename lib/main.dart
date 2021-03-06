import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trikon_app/Authentication/loginPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp();
  runApp(loadApp());
}

class loadApp extends StatefulWidget {
  const loadApp({Key? key}) : super(key: key);
  @override
  _loadAppState createState() => _loadAppState();
}

class _loadAppState extends State<loadApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: loginPage(),
      ),
    );
  }
}
