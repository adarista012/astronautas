import 'package:flutter/material.dart';

class BottomNavigatorTA extends StatelessWidget {
  const BottomNavigatorTA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(offset: Offset(0, 8), blurRadius: 8),
        ],
      ),
      height: 102,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MaterialButton(
            onPressed: () {},
            minWidth: 36,
            child: const Icon(
              Icons.home_outlined,
              color: Color.fromRGBO(2, 2, 2, 80),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            minWidth: 24,
            child: const Icon(
              Icons.calendar_today,
              color: Color.fromRGBO(2, 2, 2, 80),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            minWidth: 24,
            child: const Icon(
              Icons.search_outlined,
              color: Color.fromRGBO(2, 2, 2, 80),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            minWidth: 24,
            child: Row(
              children: const [
                Icon(
                  Icons.favorite_border,
                  color: Color.fromRGBO(2, 2, 2, 80),
                ),
                Text(
                  '  Favorites',
                  style: TextStyle(
                    color: Color.fromRGBO(2, 2, 2, 80),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
