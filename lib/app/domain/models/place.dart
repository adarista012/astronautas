import 'package:freezed_annotation/freezed_annotation.dart';

part 'place.freezed.dart';

@freezed
class Place with _$Place {
  factory Place({
    required String name,
    required bool like,
    required String photoUrl,
  }) = _Place;
}
