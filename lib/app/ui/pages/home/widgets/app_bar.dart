import 'package:flutter/material.dart';

class AppBarTA extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  AppBarTA({Key? key})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://estaticos.muyhistoria.es/media/cache/400x300_thumb/uploads/images/pyr/597b1cb15cafe8fab59909bc/nasa-c_0.jpg'),
          ),
          SizedBox(
              child: Row(
            children: [
              MaterialButton(
                minWidth: 40,
                padding: EdgeInsets.zero,
                onPressed: () {},
                color: Colors.white,
                shape: const CircleBorder(),
                child: const Icon(Icons.notifications_none,
                    color: Color.fromRGBO(2, 2, 2, 60)),
              ),
              MaterialButton(
                minWidth: 40,
                padding: EdgeInsets.zero,
                onPressed: () {},
                color: Colors.white,
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.settings,
                  color: Color.fromRGBO(2, 2, 2, 80),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
