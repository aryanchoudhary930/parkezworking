import 'package:parkezze/Model/Address.dart';
import 'package:parkezze/Model/Property.dart';

// ignore: camel_case_types
class pSpace1 extends Property {
  bool endroitEntier;
  bool chambrePartage;
  bool equipe;

  pSpace1(
    String titre,
    List<String> images,
    int prix,
    Address address,
    String descreption,
    double raiting,
    Facilities commodite,
    this.endroitEntier,
    this.chambrePartage,
    this.equipe,
  ) : super(titre, images, prix, address, descreption, raiting, commodite);
}
