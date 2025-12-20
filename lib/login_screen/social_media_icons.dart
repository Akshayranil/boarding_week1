import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.google, size: 30),
              SizedBox(width: 20),
              Icon(FontAwesomeIcons.linkedin, size: 30),
              SizedBox(width: 20),
              Icon(FontAwesomeIcons.facebook, size: 30),
              SizedBox(width: 20),
              Icon(FontAwesomeIcons.instagram, size: 30),
              SizedBox(width: 20),
              Icon(FontAwesomeIcons.whatsapp, size: 30),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Buisness User?'), Text("Don't have an account")],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Login here',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  "Sign up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('By continuing, you agree to',style: TextStyle(color: Colors.grey),),
              SizedBox(height: 6), 
              Text("Promilo's Terms of Use and Privacy Policy"),
            ],
          ),
        ),
      ],
    );
  }
}
