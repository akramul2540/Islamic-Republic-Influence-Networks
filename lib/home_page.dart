import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Saved!', textAlign: TextAlign.center,),));
          }, icon: Icon(Icons.save)),
        ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    // radius: 30,
                    backgroundImage: NetworkImage('https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg'),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.teal
                  ),
                  accountName: Text('Md Akramul Hossain'),
                  accountEmail: Text('info@gmail.com')),
                
              ),
              ListTile(
                leading: Icon(Icons.person, size: 40,),
                title: Text('Profile'),
                subtitle: Text('Enter your email here'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.location_pin, size: 40,),
                title: Text('Address'),
                subtitle: Text('Enter your address here'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.settings, size: 40,),
                title: Text('settings'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.dark_mode, size: 40,),
                title: Text('Theme Mood'),
                trailing: Icon(Icons.toggle_off, size: 40,),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.exit_to_app, size: 40,),
                title: Text('Logout'),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child:Container(
                color: Colors.blueAccent,
              )),
              Flexible(
              flex: 1,
              child:Container(
              )),
              Flexible(
              flex: 1,
              child:Container(
                color: Colors.blueAccent,
              )),
          ],
        ),
    );
  }
}