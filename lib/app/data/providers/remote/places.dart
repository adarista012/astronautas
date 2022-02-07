import 'package:astronautas/app/domain/models/place.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Places with ChangeNotifier {
  CollectionReference placesCollection =
      FirebaseFirestore.instance.collection('Places');

  List<Place> placesFromFire(QuerySnapshot snapshot) {
    return snapshot.docs.map((e) {
      return Place(
        name: e.get('name'),
        like: e.get('like'),
        photoUrl: e.get('photoUrl'),
      );
    }).toList();
  }

  Stream<List<Place>> listPlaces() {
    return placesCollection.snapshots().map(placesFromFire);
  }
}
