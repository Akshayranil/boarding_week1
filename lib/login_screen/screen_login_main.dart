import 'package:boarding1_machinetask/login_screen/email_textfield.dart';
import 'package:boarding1_machinetask/login_screen/password_textfield.dart';
import 'package:boarding1_machinetask/login_screen/social_media_icons.dart';
import 'package:boarding1_machinetask/login_screen/submit_button.dart';
import 'package:boarding1_machinetask/utilities/login_validator.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final ValueNotifier<bool> isValid = ValueNotifier(false);

  void validateFields() {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    isValid.value = validateLoginFields(email: email, password: password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'promilo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Hi,Welcome Back!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
              ),

              EmailTextfield(
                controller: emailController,
                onChanged: validateFields,
              ),

              PasswordTextfield(
                controller: passwordController,
                onChanged: validateFields,
              ),

              SubmitButton(
                emailController: emailController,
                passwordController: passwordController,
                isValid: isValid,
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text("OR"),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
              ),

              SocialMediaIcons(),
            ],
          ),
        ),
      ),
    );
  }
}
