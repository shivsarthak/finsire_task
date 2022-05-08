import 'package:finsire_task/styles.dart';
import 'package:flutter/material.dart';

class ChipBar extends StatefulWidget {
  const ChipBar({Key? key}) : super(key: key);

  @override
  State<ChipBar> createState() => _ChipBarState();
}

class _ChipBarState extends State<ChipBar> {
  final List<String> _chips = [
    "#Trending",
    "#Food",
    "#Activity",
    "#Shopping",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: _Chip(
              label: _chips.elementAt(index),
              selected: index == 0 ? true : false,
            ))),
        itemCount: _chips.length,
      ),
    );
  }
}

class _Chip extends StatefulWidget {
  bool selected;
  final String label;
  _Chip({Key? key, this.selected = false, required this.label})
      : super(key: key);

  @override
  State<_Chip> createState() => __ChipState();
}

class __ChipState extends State<_Chip> {
  bool selected = false;
  @override
  void initState() {
    selected = widget.selected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      backgroundColor: selected ? accentColor : backgroundColor,
      shape: StadiumBorder(side: BorderSide(color: accentColor)),
      padding: EdgeInsets.all(8),
      label: Text(
        widget.label,
        style: TextStyle(color: selected ? Colors.white : Colors.black),
      ),
      onPressed: () {
        setState(() {
          selected = !selected;
        });
      },
    );
  }
}
