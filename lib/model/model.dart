// ignore_for_file: unnecessary_getters_setters
class Model {
  double? _temp;
  String? _icon;
  String? _description;
  double? _humidity;
  double? _speed;
  double? _feelsLike;

  // برای مقدار دهی کردن متغیر های کلاس مدل Gettter and Setter 
  
  set temp(double? temp) {
    _temp = temp;
  }

  double? get temp {
    return _temp;
  }

  set description(String? description) {
    _description = description;
  }

  String? get description {
    return _description;
  }

  set humidity(double? humidity) {
    _humidity = humidity;
  }

  double? get humidity {
    return _humidity;
  }

  set speed(double? speed) {
    _speed = speed;
  }

  double? get speed {
    return _speed;
  }

  set feelsLike(double? feelsLike) {
    _feelsLike = feelsLike;
  }

  double? get feelsLike {
    return _feelsLike;
  }

  set icon(String? icon) {
    _icon = icon;
  }

  String? get icon {
    return _icon;
  }
}
