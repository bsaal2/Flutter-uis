import 'package:flutter/material.dart';
import '../utils/network-image.dart';

class StoryItem extends StatelessWidget {
  final String avatar = Avatar[3];
  final String image;
  final String text;

  StoryItem(this.image, this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0),
      child: Column(
        children: [
          Container(
            width: 73,
            height: 73,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF9B2282), Color(0xFFEEA863)]),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: Colors.black),
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.cover)),
              ),
            ),
          ),
          SizedBox(height: 8),
          SizedBox(
            width: 70,
            child: Text(
              text,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
