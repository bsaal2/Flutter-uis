import 'package:flutter/material.dart';
import '../avatar.dart';
import '../doctor-profile-constant.dart';

class Banner extends StatelessWidget {
  final String title;
  final String subtitle;
  final String subtitle1;
  final String subtitle2;
  final String avatar = AvatarList[0];

  Banner(Key key, this.title, this.subtitle, this.subtitle1, this.subtitle2) : super(key: key);

  @override
  Container build(BuildContext context) {
    return Container(
            height: bannerHeight,
            decoration: BoxDecoration(
                color: bannerBackgroundColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: BannerBottomLeft,
                    bottomRight: BannerBottomRight)),
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
                      image: NetworkImage()
                    ),
                      color: Colors.black, shape: BoxShape.circle),
                )
              ],
            ),
          )
  }
}