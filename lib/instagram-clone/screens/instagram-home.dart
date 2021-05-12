import 'package:flutter/material.dart';
import '../utils/network-image.dart';
import '../../models/instagram-banner.dart';
import './story-item.dart';

class InstagramHome extends StatelessWidget {
  final String logo = Avatar[0];
  final String profilePicture = Avatar[1];

  final List<InstagramBanner> bannerList = [
    InstagramBanner(Avatar[2], 'bishal'),
    InstagramBanner(Avatar[3], 'endu'),
    InstagramBanner(Avatar[4], 'meadhikari'),
    InstagramBanner(Avatar[5], 'himal'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        child: SingleChildScrollView(
            child: Column(
          children: [_header(), _slidingBanner()],
        )),
      ),
    );
  }

  // Sliding Banner
  Widget _slidingBanner() {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 18),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 68,
                          height: 68,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(profilePicture)),
                              border:
                                  Border.all(width: 1, color: Colors.white)),
                        ),
                        Positioned(
                            right: 1,
                            bottom: 1,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                  border: Border.all(
                                      width: 2, color: Colors.white)),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: 70,
                      child: Text(
                        'Your story',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:
                    List.generate(bannerList.length, (index) => StoryItem()),
              )
            ],
          ),
        )
      ],
    );
  }

  // Header of the instagram
  Widget _header() {
    return Container(
      height: 90,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, top: 30, right: 7, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: NetworkImage(logo),
              width: 115,
            ),
            Spacer(),
            IconButton(
                icon: Icon(
                  Icons.favorite_border_outlined,
                  size: 28,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.messenger_outline,
                  size: 28,
                ),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
