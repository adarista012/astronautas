import 'package:astronautas/app/data/providers/remote/places.dart';
import 'package:astronautas/app/domain/models/place.dart';
import 'package:astronautas/app/ui/pages/home/controller/home_provider.dart';
import 'package:flutter/material.dart';
import 'container_header.dart';
import 'container_place.dart';

class ContainerListCategory extends StatelessWidget {
  const ContainerListCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32.0),
            topRight: Radius.circular(32.0),
          ),
        ),
        child: Column(
          children: [
            const ContainerHeader(
              text: 'Happy Hours',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24.0,
              ),
              icon: Icons.delete_outline,
            ),
            Expanded(
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: StreamBuilder<List<Place>>(
                      stream: Places().listPlaces(),
                      builder: (_, snapshot) {
                        if (snapshot.hasError) {
                          return const Center(child: Text('Error'));
                        }
                        if (!snapshot.hasData) {
                          return const Center(child: Text('Loading...'));
                        }

                        if (homeProvider.read.loading) {
                          return const Center(child: Text('Loading...'));
                        }
                        List<Place>? list = snapshot.data;
                        return ListView.builder(
                            itemCount: list!.length,
                            itemBuilder: (_, index) {
                              return ContainerPlace(
                                name: list[index].name,
                                like: list[index].like,
                                url: list[index].photoUrl,
                              );
                            });
                      })),
            ),
          ],
        ),
      ),
    );
  }
}
