import 'package:flutter/material.dart';
import 'package:kit_2fa/screens/generate_code.dart';
import 'package:kit_2fa/screens/verify_code.dart';

class Kit2FA {
  Future<void> activate(
      {required BuildContext context,
      required String appName,
      required String info}) {
    return Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => GenerateCode(appName: appName, info: info)),
    );
  }

  Future<void> verify({required BuildContext context, required page}) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => VerifyCode(successPage: page)),
    );
  }
}
