import 'package:flutter/material.dart';

class RectangularBox extends StatelessWidget {
  final Color backgroundColor;
  final double boxWidth;
  final IconData icon;
  final String title;
  final String subtitle;

  RectangularBox(
      Key key, this.title, this.backgroundColor, this.boxWidth, this.icon,
      {this.subtitle: ''})
      : super(key: key);

  @override
  Container build(BuildContext context) {
    return Container(
      width: boxWidth,
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 3))
          ]),
      child: this.subtitle == ''
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon, color: Colors.white, size: 25),
                Text(this.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold))
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon, color: Colors.white, size: 25),
                Text(this.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
                Text(this.subtitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold))
              ],
            ),
    );
  }
}
