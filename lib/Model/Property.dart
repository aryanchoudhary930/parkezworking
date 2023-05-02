import 'package:parkezze/Model/Address.dart';

abstract class Property {
  String titre;
  List<String> images;
  int prix;
  Address address;
  String descreption;
  double raiting;
  Facilities commodite;

  Property(
    this.titre,
    this.images,
    this.prix,
    this.address,
    this.descreption,
    this.raiting,
    this.commodite,
  );
}

class Facilities {
  // ignore: non_constant_identifier_names
  bool indoor;
  bool washroom;
  bool valet;
  bool dropandpickup;

  Facilities(
    this.indoor,
    this.washroom,
    this.valet,
    this.dropandpickup,
  );
}
