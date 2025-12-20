import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class MeetupIcons extends StatelessWidget {
  const MeetupIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[350],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.download_outlined),
          SizedBox(width: 8),
          Icon(Icons.book_rounded),
          SizedBox(width: 8),
          Icon(Icons.favorite_border),
          SizedBox(width: 8),
          Icon(Icons.fullscreen),
          SizedBox(width: 8),
          Icon(Icons.star),
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              Share.share(
                'Check this out! https://example.com',
                subject: 'Shared from Flutter App',
              );
            },
          ),
        ],
      ),
    );
  }
}
