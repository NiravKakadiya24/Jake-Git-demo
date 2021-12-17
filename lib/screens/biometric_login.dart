import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jack_wharton/screens/home_screen.dart';
import 'package:local_auth/local_auth.dart';

class BiometricLogin extends StatefulWidget {
  const BiometricLogin({Key? key}) : super(key: key);

  @override
  _BiometricLoginState createState() => _BiometricLoginState();
}

class _BiometricLoginState extends State<BiometricLogin> {
  bool isAuth = false;

  void checkBiometric() async {
    final LocalAuthentication auth = LocalAuthentication();
    bool canCheckBiometrics = false;
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
    } catch (e) {
      print("error biome trics $e");
    }
    print("biometric is available: $canCheckBiometrics");
    List<BiometricType>? availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } catch (e) {
      print("error enumerate biometrics $e");
    }
    print("following biometrics are available");
    if (availableBiometrics?.isNotEmpty ?? false) {
      availableBiometrics?.forEach((ab) {
        print("\ttech: $ab");
      });
    } else {
      print("no biometrics are available");
    }

    bool authenticated = false;

    try {
      authenticated = await auth.authenticateWithBiometrics(
          localizedReason: 'Touch your finger on the sensor to login',
          useErrorDialogs: true,
          stickyAuth: true
          // androidAuthStrings:AndroidAuthMessages(signInTitle: "Login to HomePage")
          );
    } catch (e) {
      print("error using biometric auth: $e");
    }

    setState(() {
      isAuth = authenticated ? true : false;
    });

    if (authenticated) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    }
    print("authenticated: $authenticated");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Bio-Authentication'),
      ),
      body: Center(
        child: new TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey)),
          child: new Text(
            "Biometric Login",
            style: new TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          onPressed: checkBiometric,
        ),
      ),
    );
  }
}
