import 'package:flutter/material.dart';

class ContainerPlace extends StatelessWidget {
  final String name;
  final bool like;
  final String url;
  const ContainerPlace({
    Key? key,
    required this.name,
    required this.like,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(251, 251, 251, 1),
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(220, 220, 220, 0.6),
              offset: Offset(0, 1),
              blurRadius: 3.2,
              spreadRadius: 0.8),
        ],
      ),
      height: 140,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Container(
                      height: 80,
                      margin: const EdgeInsets.only(
                        top: 24.0,
                        left: 16.0,
                        right: 8.0,
                        bottom: 24.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(24.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(url),
                        ),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      color: Colors.white,
                      shape: const CircleBorder(),
                      child: Icon(
                        Icons.favorite,
                        color: like ? Colors.orange[700] : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                minWidth: 18.0,
                child: const Text(
                  '...',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
