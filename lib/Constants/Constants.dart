import 'dart:ui';

import 'package:parkezze/Model/Address.dart';
import 'package:parkezze/Model/pSpace2.dart';
import 'package:parkezze/Model/Property.dart';
import 'package:parkezze/Model/Parking_Spaces.dart';
import 'package:parkezze/Model/pSpace1.dart';

class Constants {
  static List<Property> properties = [
    pSpace2(
      "Parking Space",
      ['assets/images/properties/p4.jpg', "assets/images/properties/p5.jpg"],
      500,
      Address("India", "Sky Light", "Kapurthala", "Ibban", "15", "09025"),
      "description which can exceed 3 lines so the sequence will be hidden until clicking the button show the sequence to display it. here is a demo that does it ",
      4.2,
      Facilities(true, true, false, true),
      true,
      false,
      true,
    ),
    pSpace1(
      "Parking Space",
      ['assets/images/properties/p6.jpg', "assets/images/properties/p7.jpg"],
      500,
      Address("India", "Galaxy", "Ludhiana", "street", "55", "16025"),
      "description which can exceed 3 lines so the sequence will be hidden until clicking the button show the sequence to display it. here is a demo that does it ",
      4.0,
      Facilities(true, true, false, true),
      true,
      false,
      true,
    ),
  ];

  static List<Wilaya> wilayas = [
    Wilaya("Alger", 16, "Ville sur plage avec des monuments touristiques",
        "assets/images/properties/p1.jpg"),
    Wilaya("Oran", 31, "Ville sur plage avec des monuments touristiques",
        "assets/images/properties/p2.jpg"),
    Wilaya("Blida", 09, "Ville avec des monuments touristiques et forets",
        "assets/images/properties/p3.jpg"),
    Wilaya("Gherdaia", 47, "Ville du sahara avec des monuments historiques",
        "assets/images/properties/p4.jpg"),
  ];

  static Color redParkz = Color(0xffFF5A5F);
  static Color greenParkz = Color(0xff00A699);
}
