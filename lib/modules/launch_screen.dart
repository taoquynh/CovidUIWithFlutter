import 'dart:async';
import 'package:flutter/material.dart';
import 'package:learn_ui/utils/color.dart';
import 'package:learn_ui/modules/login_screen.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  Timer scheduleTimeout([int milliseconds = 10000]) =>
      Timer(Duration(milliseconds: milliseconds), handleTimeout);

  void handleTimeout() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) {
      // do something
      return LoginScreen();
    }));
  }

  @override
  initState() {
    super.initState();
    scheduleTimeout(5000);
  }

  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/doctor.png',
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),
              Text(
                'COVID-19',
                style: TextStyle(
                    fontSize: 36, color: AppColor.mainColor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Test booking app',
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.w200, color: AppColor.mainColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
