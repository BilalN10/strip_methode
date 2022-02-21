import 'package:flutter/material.dart';
import 'package:payment_methode_yogan/my_home_screen.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'my_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey =
      "pk_test_51KUlw0Af3S1YYOPAwpFRltQqpki1BcEmeQXOVExQm5bIPLpF7YMWA4zmkhAhPPNXSwaFD5OPuGJKRN4XcGUyg8mv00NTIBiFQG";

  // Stripe.merchantIdentifier = 'any string works';

  await Stripe.instance.applySettings().then((value) {
    print("Configured ");
  }).catchError((e) {
    print("Error is ${e.toString()} ");
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
