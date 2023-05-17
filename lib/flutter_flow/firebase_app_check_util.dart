import 'package:firebase_app_check/firebase_app_check.dart';

Future initializeFirebaseAppCheck() => FirebaseAppCheck.instance.activate(
      webRecaptchaSiteKey: '6Ld_2QAmAAAAADjO-WgeNSyXDrY8bfG65umqCXn2',
      androidProvider: AndroidProvider.playIntegrity,
    );
