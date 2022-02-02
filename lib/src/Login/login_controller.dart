
import 'package:flutter/material.dart';
import 'components/dialog_custom.dart';

class LoginController {
  final BuildContext context;

  LoginController({required this.context});

   dailog() {
    showDialog(
      context: context,
      builder: (context) {
        return const DialogCustom(
          title: 'OPS! :(',
          description: 'kkkkk tider Fake...\n #Flutterando #masterClass',
          top: 50.0,
          bottom: 20.0,
          left: 18.0,
          right: 18.0,
          radius: 8.0,
          // ignore: unnecessary_lambdas
        );
      },
    );
  }
}
