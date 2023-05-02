import 'package:parkezze/Model/Property.dart';
import 'package:parkezze/Model/Address.dart';

// ignore: camel_case_types
class pSpace2 extends Property {
  bool sanitairePrive;
  bool chambrePartage;
  bool equipe;

  pSpace2(
    String title,
    List<String> images,
    int price,
    Address address,
    String description,
    double rating,
    Facilities commodite,
    this.sanitairePrive,
    this.chambrePartage,
    this.equipe,
  ) : super(title, images, price, address, description, rating, commodite);
}
