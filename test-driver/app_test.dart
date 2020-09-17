import 'package:flutter/cupertino.dart';
import 'package:flutter_driver/flutter_driver.dart' as drive;
import 'package:flutter_test/flutter_test.dart';
import 'package:shops_app/constants.dart';

void main(){
  group('Testing Login Screen', () {

    drive.FlutterDriver driver;
    
    setUpAll(() async {
      driver = await drive.FlutterDriver.connect();
    });

    tearDownAll(() {
      driver?.close();
    });

    test('Test initial Setup', () async {

      expect(await driver.getText(drive.find.byValueKey(ValueKey(Constants.KEY_CONFIRM_PASSWORD))), findsNothing);
    });

  });
}