import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            children: [
              _header(),
              _slidingBanner(),
              SizedBox(height: 8),
              Divider(
                thickness: 1,
              ),
              _imageCard()
            ],
          )),
        ),
        bottomNavigationBar: _footer());
  }

  // Image Card
  Widget _imageCard() {
    return Column(
      children: [
        Container(
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.black)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFF9B2282), Color(0xFFEEA863)])),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          height: 37,
                          width: 37,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 1, color: Colors.black),
                              image: DecorationImage(
                                  image: NetworkImage(Avatar[2]),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('pindapandaonly',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 17.0),
                child: FaIcon(
                  FontAwesomeIcons.ellipsisV,
                  size: 14,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        Container(
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.black)),
          child: Row(
            children: [
              Expanded(
                child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image(image: NetworkImage(Post[0]))),
              )
            ],
          ),
        ),
        Container(
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 12, top: 10, bottom: 10),
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.heart,
                      size: 27,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    FaIcon(
                      FontAwesomeIcons.comment,
                      size: 27,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.share_outlined,
                      size: 27,
                      color: Colors.black,
                    )
                  ],
                ),
                Spacer(),
                FaIcon(
                  FontAwesomeIcons.bookmark,
                  size: 27,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
        Container(
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  '285,946 likes',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  // Footer
  Widget _footer() {
    int currentIndex;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: (index) {
        currentIndex = index;
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              currentIndex == 0 ? Icons.home_filled : Icons.home_outlined,
              color: Colors.black,
              size: 30,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined, color: Colors.black, size: 30),
            label: 'Search'),
        BottomNavigationBarItem(
            icon:
                Icon(Icons.add_a_photo_outlined, color: Colors.black, size: 30),
            label: 'Add'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shop_outlined, color: Colors.black, size: 30),
            label: 'Shop'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
              color: Colors.black,
              size: 30,
            ),
            label: 'Me')
      ],
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
                children: List.generate(
                    bannerList.length,
                    (index) => StoryItem(
                        bannerList[index].image, bannerList[index].text)),
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
