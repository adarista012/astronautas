import 'package:flutter/material.dart';

class ButtonCategory extends StatelessWidget {
  final String text;
  final bool isSelect;
  const ButtonCategory({
    Key? key,
    required this.text,
    required this.isSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 12.0, top: 12.0),
      child: MaterialButton(
        onPressed: () {},
        color: isSelect ? Colors.orange[700] : Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        minWidth: 60,
        child: Text(
          text,
          style: isSelect
              ? const TextStyle(
                  fontWeight: FontWeight.w400, color: Colors.white)
              : const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
