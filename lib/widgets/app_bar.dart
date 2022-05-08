import 'package:finsire_task/styles.dart';
import 'package:flutter/material.dart';

AppBar customAppBar() {
  return AppBar(
    flexibleSpace: Center(
      child: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Row(
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: primaryColor),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  "https://repository-images.githubusercontent.com/15949540/b0a70b80-cb15-11e9-8338-661f601406a1",
                  fit: BoxFit.cover,
                  height: 32,
                ),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                "Feed",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 22),
              ),
            ),
            Icon(
              Icons.add,
              size: 28,
            ),
            SizedBox(width: 24),
            Icon(
              Icons.mail_outline,
              size: 28,
            ),
          ],
        ),
      )),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}
