import 'package:astronautas/app/ui/pages/home/widgets/app_bar.dart';
import 'package:astronautas/app/ui/pages/home/widgets/bottom_navigation.dart';
import 'package:astronautas/app/ui/pages/home/widgets/container_categories_scroll.dart';
import 'package:astronautas/app/ui/pages/home/widgets/container_header.dart';
import 'package:flutter/material.dart';

import 'widgets/container_list_category.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTA(),
      body: Column(
        children: const [
          ContainerHeader(
            text: 'Favorites',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 32.0,
            ),
            icon: Icons.add,
          ),
          ContainerCategoriesScroll(),
          ContainerListCategory(),
        ],
      ),
      bottomNavigationBar: const BottomNavigatorTA(),
    );
  }
}
