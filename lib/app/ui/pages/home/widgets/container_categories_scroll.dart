import 'package:flutter/material.dart';

import 'button_category.dart';

class ContainerCategoriesScroll extends StatelessWidget {
  const ContainerCategoriesScroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(bottom: 12.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          ButtonCategory(text: 'All', isSelect: false),
          ButtonCategory(text: 'Happy Hours', isSelect: true),
          ButtonCategory(text: 'Drinks', isSelect: false),
          ButtonCategory(text: 'Beer', isSelect: false),
          ButtonCategory(text: 'Food', isSelect: false)
        ],
      ),
    );
  }
}
