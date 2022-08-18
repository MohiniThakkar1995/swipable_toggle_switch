import 'package:flutter/material.dart';
import 'package:swipable_toggle_switch/swipable_toggle_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.pink,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SwipableToggleSwitch(
                        values: const ["°C", "°F"],
                        width: 350,
                        onToggleCallback: (value) {},
                        buttonColor: const Color(0xFF0A3157),
                        backgroundColor: const Color(0xFFB5C1CC),
                        textColor: const Color(0xFFFFFFFF),
                      ),
                      const SizedBox(height: 20,),
                      SwipableToggleSwitch(
                        values: const ["Male", "Female"],
                        width: 650,
                        onToggleCallback: (value) {},
                        boxShape: BoxShape.rectangle,
                        buttonColor: const Color(0xFF0A3157),
                        backgroundColor: const Color(0xFFB5C1CC),
                        textColor: const Color(0xFFFFFFFF),
                      ),
                      const SizedBox(height: 20,),
                      SwipableToggleSwitch(
                        values: const ["ON", "OFF"],
                        width: 650,
                        onToggleCallback: (value) {},
                        boxShape: BoxShape.rectangle,
                        buttonColor: const Color(0xFF0A3157),
                        backgroundColor: const Color(0xFFB5C1CC),
                        textColor: const Color(0xFFFFFFFF),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
