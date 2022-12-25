import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:path_intern_mobile/screens/authentication/login.dart';
import '../../../widgets/notifications.dart';

class HomeAppBar extends StatelessWidget {
  void _signOut() {
    FirebaseAuth.instance.signOut();
    runApp(new MaterialApp(
      home: new LoginPage(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top, left: 25, right: 25),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Home",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text("Gauhar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  )),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => Notifications(),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30, right: 10),
                  child: Stack(
                    children: [
                      Icon(
                        Icons.notifications_none_outlined,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: _signOut,
                child: Container(
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                  child: ClipOval(
                    child: Icon(
                      Icons.login,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
