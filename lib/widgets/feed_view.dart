import 'package:finsire_task/models/feed_item.dart';
import 'package:finsire_task/widgets/chip_bar.dart';
import 'package:finsire_task/widgets/feed_tile.dart';
import 'package:flutter/material.dart';

class FeedView extends StatelessWidget {
  FeedView({Key? key}) : super(key: key);

  final List<FeedItem> feed = [
    FeedItem(
      name: "Ingrid Bergman",
      image: Image.asset("images/1.jpeg"),
      caption: "Selfie Dare Accepted",
    ),
    FeedItem(
      name: "Meryl Streep",
      image: Image.asset("images/2.jpeg"),
      caption: "Pose in the Lockdown Without Studio",
    ),
    FeedItem(
      name: "Hanah Jones",
      image: Image.asset("images/3.jpeg"),
      caption: "Photoshoot done at home with sis",
    ),
    FeedItem(
      name: "Ingrid Bergman",
      image: Image.asset("images/1.jpeg"),
      caption: "Selfie Dare Accepted",
    ),
    FeedItem(
      name: "Meryl Streep",
      image: Image.asset("images/2.jpeg"),
      caption: "Pose in the Lockdown Without Studio",
    ),
    FeedItem(
      name: "Hanah Jones",
      image: Image.asset("images/3.jpeg"),
      caption: "Photoshoot done at home with sis",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    List<FeedItem> left = [];
    List<FeedItem> right = [];

    for (int i = 0; i < feed.length; i++) {
      if (i % 2 == 0) {
        left.add(feed.elementAt(i));
      } else {
        right.add(feed.elementAt(i));
      }
    }
    return Column(
      children: [
        ChipBar(),
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: left.map((e) => FeedTile(item: e)).toList(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: right.map((e) => FeedTile(item: e)).toList(),
            )
          ],
        ),
      ],
    );
  }
}
