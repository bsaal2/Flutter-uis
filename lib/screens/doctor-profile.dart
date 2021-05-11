import 'package:flutter/material.dart';
import '../shared/rectangular-box.dart';
import '../doctor-profile-constant.dart';
import '../avatar.dart';

class DoctorProfile extends StatelessWidget {
  final String title = 'Dashboard';
  final String subtitle = 'Dr. John Doe';
  final String subtitle1 = 'Md,(General Medium), DM';
  final String subtitle2 = '(Cardiology)';
  final String avatar = AvatarList[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: backgroundColor,
      child: ListView(
        children: [
          /** Banner */
          this._buildBanner(),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  this._appointmentSection(),
                  SizedBox(height: 20),
                  this._dashboardSection1(),
                  SizedBox(height: 20),
                  this._dashboardSection2(),
                  SizedBox(height: 20),
                  this._dashboardSection3()
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }

  Container _dashboardSection3() {
    return Container(
      height: 130,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RectangularBox(key, 'Discharged', Colors.blue, 117, Icons.favorite),
          RectangularBox(key, 'Dropped', Colors.pink, 117, Icons.portrait),
          RectangularBox(key, 'Arrived', Colors.blue, 117, Icons.favorite)
        ],
      ),
    );
  }

  Container _dashboardSection2() {
    return Container(
        height: 180,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RectangularBox(
                key, 'Number of Patient', Colors.pink, 230, Icons.portrait,
                subtitle: '1200'),
            SizedBox(width: 20),
            Expanded(
                child: RectangularBox(
                    key, "Admitted", Colors.green, 1, Icons.portrait,
                    subtitle: '857'))
          ],
        ));
  }

  Container _dashboardSection1() {
    Color color1 = Colors.blue;
    Color color2 = Colors.red;

    return Container(
      height: 80,
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          this._buildBar(color1),
          SizedBox(width: 15),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Today',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Text(
                  '18 Patients',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                )
              ],
            ),
          ),
          SizedBox(
            width: 35,
          ),
          this._buildBar(color2),
          SizedBox(width: 15),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Canceled',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Text(
                  '7 Patients',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _buildBar(Color color) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 20,
            width: 8,
            color: Colors.grey.shade300,
          ),
          SizedBox(width: 4),
          Container(
            height: 25,
            width: 8,
            color: Colors.grey.shade300,
          ),
          SizedBox(
            width: 4,
          ),
          Container(
            height: 40,
            width: 8,
            color: color,
          ),
          SizedBox(width: 4),
          Container(
            height: 30,
            width: 8,
            color: Colors.grey.shade300,
          )
        ],
      ),
    );
  }

  /// Appointment Text
  Text _appointmentSection() {
    return Text(
      'Appointments',
      style: TextStyle(
          color: TextBlack, fontWeight: FontWeight.bold, fontSize: HFontSize),
    );
  }

  /// Heading Banner
  Container _buildBanner() {
    return Container(
      height: bannerHeight,
      decoration: BoxDecoration(
          color: bannerBackgroundColor,
          borderRadius: BorderRadius.only(
              bottomLeft: BannerBottomLeft, bottomRight: BannerBottomRight)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /** First Column */
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, top: 40),
                child: Text(
                  this.title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: TextWhite,
                      fontSize: HFontSize,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 15, top: 20),
                  child: Text(
                    this.subtitle,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: TextWhite,
                        fontSize: HFontSize,
                        fontWeight: FontWeight.bold),
                  )),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 5),
                child: Text(
                  this.subtitle1,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: TextWhite, fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 1),
                child: Text(this.subtitle2,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: TextWhite, fontSize: 18)),
              )
            ],
          ),
          /** Second Column */
          Spacer(),
          /** Third Column
                 * Circular box with image
                 */
          Container(
            height: avatarHeight,
            width: avatarWidth,
            margin: EdgeInsets.only(top: 30, right: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(this.avatar), fit: BoxFit.cover),
                color: Colors.black,
                shape: BoxShape.circle),
          )
        ],
      ),
    );
  }
}
