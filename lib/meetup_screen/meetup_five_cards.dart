import 'package:boarding1_machinetask/meet_up_detailscreen/meetup_detailedscreen.dart';
import 'package:boarding1_machinetask/utilities/screen_images.dart';
import 'package:flutter/material.dart';

class MeetupFiveCards extends StatelessWidget {
  const MeetupFiveCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Top trending Meetups',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: horizontalImages.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MeetupDescriptionScreen(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    horizontalImages[index],
                    width: 250,
                    height: 250,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
