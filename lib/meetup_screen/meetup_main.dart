import 'package:boarding1_machinetask/meetup_screen/meetup_cards.dart';
import 'package:boarding1_machinetask/meetup_screen/meetup_corousal.dart';
import 'package:boarding1_machinetask/meetup_screen/meetup_five_cards.dart';
import 'package:flutter/material.dart';

class MeetupMainScreen extends StatelessWidget {
  const MeetupMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Individual Meeting'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mic)
                ),
                
              ),
              Padding(
                padding:  EdgeInsets.only(top: 30),
                child: MeetupCorousal(),
          
              ),
          
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: MeetupCards(),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MeetupFiveCards(),
              )
            ],
          ),
        ),
      ),
    );
  }
}