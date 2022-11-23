import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_page.dart';
import 'package:flutter_application_2/search_page.dart';


void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Bottom_NavigationBar(),
    theme: ThemeData(primarySwatch: Colors.teal),
  ));
}


class Bottom_NavigationBar extends StatefulWidget {
  const Bottom_NavigationBar({super.key});

  @override
  State<Bottom_NavigationBar> createState() => _Bottom_NavigationBarState();
}

mysnackbar(message, context){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}

int _selectedindex = 0;

const pages = [
  HomePage(),
  SearchPage(),
  Center(child: Text('Notification Page'),),
  Center(child: Text('Profile Page'),),
];

class _Bottom_NavigationBarState extends State<Bottom_NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.teal,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.white,
              currentIndex: _selectedindex,
              onTap: (index){
                setState(() {
                  _selectedindex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
                  BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: 'Notifications'),
                  BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
              ],
            ),
          ),
        ),
        body: pages[_selectedindex],
    );
  }
}