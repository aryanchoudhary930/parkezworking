import 'package:airbnb_clone/Model/Address.dart';

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
  bool InterdectionFumee;
  bool serviceDeChambre;
  bool piscine;
  bool gym;
  bool repasInclus;
  bool wifi;
  bool enfantAutorise;
  // ignore: non_constant_identifier_names
  bool Parking;
  bool equipe;

  Facilities(
      this.InterdectionFumee,
      this.serviceDeChambre,
      this.piscine,
      this.gym,
      this.repasInclus,
      this.wifi,
      this.enfantAutorise,
      this.Parking,
      this.equipe);
}
