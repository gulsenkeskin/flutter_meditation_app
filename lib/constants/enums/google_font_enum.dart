
enum GoogleFontEnum{
  helveticaNeue,
  airbnbCerealApp,
}

extension GoogleFontEnumExtension on GoogleFontEnum {
  String get font {
    switch (this) {
      case GoogleFontEnum.helveticaNeue:
        return 'HelveticaNeue';
      case GoogleFontEnum.airbnbCerealApp:
        return 'Airbnb Cereal App';
      default:
        return 'Airbnb Cereal App';
    }
  }
}