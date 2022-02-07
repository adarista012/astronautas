import 'package:flutter/material.dart';

class ContainerHeader extends StatelessWidget {
  final String text;
  final TextStyle style;
  final IconData icon;
  const ContainerHeader({
    Key? key,
    required this.text,
    required this.style,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: style
              // TextStyle(
              //   fontWeight: FontWeight.w900,
              //   fontSize: 32.0,
              // ),
              ),
          MaterialButton(
            minWidth: 40,
            padding: EdgeInsets.zero,
            onPressed: () {},
            color: Colors.white,
            shape: const CircleBorder(),
            child: Icon(
              icon,
              // Icons.add,
              color: const Color.fromRGBO(2, 2, 2, 80),
            ),
          ),
        ],
      ),
    );
  }
}
