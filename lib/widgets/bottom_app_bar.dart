import 'package:finsire_task/styles.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Theme(
        data: ThemeData(
          iconTheme: IconThemeData(color: Colors.white, size: 28),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home_outlined),
            Icon(Icons.search_outlined),
            Icon(Icons.adjust_outlined),
            Icon(Icons.task_alt),
            Icon(Icons.account_circle_outlined),
          ],
        ),
      ),
    );
  }
}
