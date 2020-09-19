import 'package:flutter/material.dart';
import 'utils/authenticator/authenticator.dart';
import 'views/home.dart';
import 'views/login.dart';
import 'views/email_activation.dart';
import 'views/user_onboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final Authenticator auth = new Authenticator();
  auth.getCurrentUser().then((currentUser) {
    runApp(App(currentUser));
  });
}

class App extends StatelessWidget {
  final currentUser;

  App(this.currentUser);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Geomanist'
      ),
      home: routingUser(),
    );
  }

  routingUser() {
    if (currentUser == null) {
      return Login();
    } else {
      if(!currentUser.emailVerified) {
        return ActivateEmail();
      } else if(!currentUser.onBoarded){
        return UserOnBoard();
      } else {
        return Home();
      }
    }
  }
}






