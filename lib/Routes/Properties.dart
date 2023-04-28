import 'package:airbnb_clone/Constants/Constants.dart';
import 'package:airbnb_clone/Model/Property.dart';
import 'package:flutter/material.dart';
import 'package:airbnb_clone/Widgets/ImageView.dart';
import 'package:flutter_slider_indicator/flutter_slider_indicator.dart';

class Properties extends StatefulWidget {
  @override
  _PropertiesState createState() => _PropertiesState();
}

class _PropertiesState extends State<Properties> {
  var _pageController = PageController();

  var _liked = false;

  @override
  Widget build(BuildContext context) {
    _pageController.addListener(() {
      setState(() {});
    });

    List<Widget> properties = [
      new ImageProperty(true, Constants.properties[1]),
      new ImageProperty(false, Constants.properties[0]),
      //_buildPadding(),
    ];
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            for (Widget prop in properties) prop,
          ],
        ),
      ),
    );
  }

  Container buildImageSlider(
      BuildContext context, PageController p, int index, Property property) {
    return Container(
        // margin: EdgeInsets.all(20),
        child: PageView.builder(
            controller: p
              ..addListener(() {
                setState(() {
                  index = p.page! as int;
                });
              }),
            itemCount: property.images.length,
            itemBuilder: (context, index) {
              return ClipRRect(
                  child: Image.asset(
                property.images[index],
                fit: BoxFit.cover,
              ));
            }));
  }

  Align buildWidgetImageIndicator(
      BuildContext context, Property property, int currentindex) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: SliderIndicator(
            length: property.images.length,
            activeIndex: currentindex,
            indicator: Padding(
                padding: EdgeInsets.all(3),
                child: Icon(
                  Icons.fiber_manual_record,
                  color: Colors.white70,
                  size: 10,
                )),
            activeIndicator: Padding(
              padding: EdgeInsets.all(3),
              child: Icon(
                Icons.fiber_manual_record,
                color: Colors.white,
                size: 14,
              ),
            )),
      ),
    );
  }

  buildHeartWidget(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.topRight,
        child: GestureDetector(
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              //  borderRadius: BorderRadius.circular(25)
            ),
            child: Icon(
              !_liked ? Icons.favorite_border : Icons.favorite,
              color: !_liked ? Colors.black : Constants.redParkz,
              size: 25,
            ),
          ),
          onTap: () {
            setState(() {
              _liked = !_liked;
            });
          },
        ));
  }
}
