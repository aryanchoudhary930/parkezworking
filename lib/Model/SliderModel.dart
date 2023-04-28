class SliderModel {
  String imagePath;
  String title;
  String text;

  SliderModel(this.imagePath, this.title, this.text);

  static List<SliderModel> getSlides() {
    // ignore: deprecated_member_use
    List<SliderModel> slides = <SliderModel>[];
    SliderModel s1 = new SliderModel(
        "assets/images/Illustrations/carscreen1.png",
        "Real time",
        "Choose from millions of available parking spaces and reserve your space in advance");
    SliderModel s2 = new SliderModel(
        "assets/images/Illustrations/carscreen2.png",
        "Affordable",
        "Our app helps you find the perfect parking spot at a price that works for you ");
    SliderModel s3 = new SliderModel(
        "assets/images/Illustrations/carscreen3.png",
        "Easy-to-use",
        "Say goodbye to the stress of parking with our budget-friendly app");
    slides.add(s1);
    slides.add(s2);
    slides.add(s3);
    return slides;
  }
}
