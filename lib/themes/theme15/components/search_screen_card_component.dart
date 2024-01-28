import 'package:flutter/material.dart';

import '../../theme1/utils/T1Colors.dart';
import '../utils/T15images.dart';

class SearchScreenCardComponent extends StatelessWidget {
  SearchScreenCardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      children: List.generate(
        images.length,
        (index) => GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color[index],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(
              images[index],
              height: 70,
              width: 70,
            ),
          ),
        ),
      ),
    );
  }
}
