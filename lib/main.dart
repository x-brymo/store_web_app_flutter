import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';
import 'package:store_web_app/screens/dashboard/dashboard_screen.dart';
import 'package:store_web_app/utils/plugin/query_plugin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FlutterWebFrame(
      builder: (context){
      return MaterialApp(
      title: 'Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const DashBoardScreen(),
    );

    }, maximumSize:  Size(context.widthScreen,context.heightScreen), enabled: kIsWeb,);
  }
}

