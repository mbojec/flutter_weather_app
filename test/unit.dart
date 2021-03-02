import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/common/tools.dart';

void main() {
  group('City name validator test', (){
    test('Should confirm valid city name format', (){
      expect(Tools.isCityNameValid(value: 'Tokyo'), true);
    });

    test('Should confirm valid city name format', (){
      expect(Tools.isCityNameValid(value: 'Sydney'), true);
    });

    test('Should confirm invalid city name format', (){
      expect(Tools.isCityNameValid(value: 'New York 11'), false);
    });
  });

}
