import 'package:flutter/material.dart';
import 'package:newproject/track.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp(HomeScrenn: Homepage(),));
}

class MyApp extends StatefulWidget {
  final Widget? HomeScrenn;
  const MyApp({super.key,this.HomeScrenn});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: this.widget.HomeScrenn,
    );
  }
}
