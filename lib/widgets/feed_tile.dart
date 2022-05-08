import 'package:finsire_task/models/feed_item.dart';
import 'package:finsire_task/styles.dart';
import 'package:flutter/material.dart';

class FeedTile extends StatelessWidget {
  final FeedItem item;
  const FeedTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      width: (MediaQuery.of(context).size.width / 2) - 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            spreadRadius: 4,
            color: Colors.black12,
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Column(
          children: [
            Image.network(item.imageUrl),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(color: white),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "${item.name} ",
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                            ),
                            children: [
                              TextSpan(
                                text: item.caption,
                                style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "23 Mins Ago",
                          style: TextStyle(
                            color: accentColor,
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(item.imageUrl),
                    radius: 12,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
