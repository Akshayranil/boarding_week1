import 'dart:developer';
import 'package:boarding1_machinetask/utilities/login_function.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final ValueNotifier<bool> isValid;

  const SubmitButton({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.isValid,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isValid,
      builder: (context, valid, _) {
        return Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ElevatedButton(
            onPressed: valid
                ? () {
                    log('Button clicked');
                    login(context,emailController,passwordController);
                  }
                : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 50),
            ),
            child: const Text("Submit"),
          ),
        );
      },
    );
  }
}
