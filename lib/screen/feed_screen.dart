import 'package:finsire_task/styles.dart';
import 'package:finsire_task/widgets/app_bar.dart';
import 'package:finsire_task/widgets/bottom_app_bar.dart';
import 'package:finsire_task/widgets/feed_view.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: customAppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: FeedView(),
          ),
        ),
        bottomNavigationBar: CustomBottomAppBar());
  }
}
