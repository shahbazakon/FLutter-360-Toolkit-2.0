import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class FilterScreenPetTypeButtonComponents extends StatefulWidget {
  FilterScreenPetTypeButtonComponents({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  State<FilterScreenPetTypeButtonComponents> createState() => _FilterScreenPetTypeButtonComponentsState();
}

class _FilterScreenPetTypeButtonComponentsState extends State<FilterScreenPetTypeButtonComponents> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return TextButton(
      onPressed: () {
        setState(() {
          pressed = !pressed;
        });
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        minimumSize: Size(width / 3 - 16, 50),
        backgroundColor: pressed ? Colors.red : context.cardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(
        widget.text,
        style: pressed ? TextStyle(fontSize: 14, color: Colors.white) : TextStyle(fontSize: 14, color: Colors.grey),
      ),
    );
  }
}
