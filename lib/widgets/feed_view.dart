import 'package:finsire_task/models/feed_item.dart';
import 'package:finsire_task/widgets/chip_bar.dart';
import 'package:finsire_task/widgets/feed_tile.dart';
import 'package:flutter/material.dart';

class FeedView extends StatelessWidget {
  FeedView({Key? key}) : super(key: key);

  final List<FeedItem> feed = [
    FeedItem(
      name: "Ingrid Bergman",
      imageUrl:
          "https://img.freepik.com/free-photo/charming-sensual-woman-with-dark-hair-white-lace-dress_7502-8935.jpg?w=826&t=st=1652008421~exp=1652009021~hmac=9a0838ad5c74d7d73f0c3fa7f41a4e5e9d3dda03352f9a2cbed4ef9757ea5564",
      caption: "Selfie Dare Accepted",
    ),
    FeedItem(
      name: "Meryl Streep",
      imageUrl:
          "https://img.freepik.com/free-photo/blonde-woman-with-perfect-wavy-hairstyle-pink-party-dress-posing-hight-heels_273443-1636.jpg?t=st=1652015532~exp=1652016132~hmac=45b2e8e59821f3be595f0e3dace978f7b2edae918d654dcfc6e353363906abb1&w=2000",
      caption: "Pose in the Lockdown Without Studio",
    ),
    FeedItem(
      name: "Hanah Jones",
      imageUrl:
          "https://img.freepik.com/free-photo/glamorous-pretty-women-posing-wearing-casual-winter-jackets_273443-2347.jpg?t=st=1652015532~exp=1652016132~hmac=3b6dd6c94d168cdd0cc7b65c5e55b0a2185ca4f5d2bde11403ed3fcf5a8c29c0&w=1800",
      caption: "Photoshoot done at home with sis",
    ),
    FeedItem(
      name: "Ingrid Bergman",
      imageUrl:
          "https://img.freepik.com/free-photo/charming-sensual-woman-with-dark-hair-white-lace-dress_7502-8935.jpg?w=826&t=st=1652008421~exp=1652009021~hmac=9a0838ad5c74d7d73f0c3fa7f41a4e5e9d3dda03352f9a2cbed4ef9757ea5564",
      caption: "Selfie Dare Accepted",
    ),
    FeedItem(
      name: "Meryl Streep",
      imageUrl:
          "https://img.freepik.com/free-photo/blonde-woman-with-perfect-wavy-hairstyle-pink-party-dress-posing-hight-heels_273443-1636.jpg?t=st=1652015532~exp=1652016132~hmac=45b2e8e59821f3be595f0e3dace978f7b2edae918d654dcfc6e353363906abb1&w=2000",
      caption: "Pose in the Lockdown Without Studio",
    ),
    FeedItem(
      name: "Hanah Jones",
      imageUrl:
          "https://img.freepik.com/free-photo/glamorous-pretty-women-posing-wearing-casual-winter-jackets_273443-2347.jpg?t=st=1652015532~exp=1652016132~hmac=3b6dd6c94d168cdd0cc7b65c5e55b0a2185ca4f5d2bde11403ed3fcf5a8c29c0&w=1800",
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
              children: left.map((e) => FeedTile(item: e)).toList(),
            ),
            Column(
              children: right.map((e) => FeedTile(item: e)).toList(),
            )
          ],
        ),
      ],
    );
  }
}
