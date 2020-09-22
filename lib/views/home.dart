import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home>{

  List<Map<String, String>> clinicService = [
    {"service_name": "Service 1"},
    {"service_name": "Service 2"},
    {"service_name": "Service 3"},
    {"service_name": "Service 4"},
    {"service_name": "Service 5"},
    {"service_name": "Service 6"}
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(76, 255, 255, 255),
            ),
            activeIcon: Icon(
                Icons.home,
                color: Colors.white,
            )
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
                color: Color.fromARGB(76, 255, 255, 255),
              ),
              activeIcon: Icon(
                Icons.calendar_today,
                color: Colors.white,
              )
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Color.fromARGB(76, 255, 255, 255),
              ),
              activeIcon: Icon(
                Icons.notifications,
                color: Colors.white,
              )
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: Color.fromARGB(76, 255, 255, 255),
              ),
              activeIcon: Icon(
                Icons.account_circle,
                color: Colors.white,
              )
          ),
        ],
        backgroundColor: Colors.blueAccent,
      ),
      tabBuilder: (BuildContext context, int index){
        return CupertinoTabView(
          builder: (BuildContext context){
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                backgroundColor: Colors.blueAccent,
                ),
              child: Center(
                child: Text(
                  'Welcome to Home'
                ),
              ),
            );
          },
        );
      },
    );
  }

}

