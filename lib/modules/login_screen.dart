import 'package:flutter/material.dart';
import 'package:learn_ui/utils/color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _controller;

  void onChangeMobileTextField (String value) async {}

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Text('LOGIN', style: TextStyle(color: AppColor.mainColor),),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  const Text('Mobile Number'),
                  TextField(
                    controller: _controller,
                    onChanged: onChangeMobileTextField,
                    decoration: InputDecoration (
                      fillColor: AppColor.whiteColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColor.mainColor, width: 1),
                        borderRadius: BorderRadius.circular(0)
                      )
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
