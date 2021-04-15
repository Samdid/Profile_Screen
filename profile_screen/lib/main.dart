import 'package:flutter/material.dart';
import 'package:profile_screen/profile.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    // Text(
    //   'Home',
    //   style: optionStyle,
    // ),
    ProfileScreen(),
    Center(
      child: Text(
        'Compass',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'School',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Notifications',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Help',
        style: optionStyle,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items:<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 40,color: Colors.grey,),
            activeIcon: Icon(Icons.home,size: 40,color: Colors.blue,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_drop_down_circle,size: 40,color: Colors.grey,),
            activeIcon: Icon(Icons.arrow_drop_down_circle,size: 40,color: Colors.blue,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school,size: 40,color: Colors.grey,),
            activeIcon: Icon(Icons.school,size: 40,color: Colors.blue,),
            
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,size: 40,color: Colors.grey,),
            activeIcon: Icon(Icons.notifications,size: 40,color: Colors.blue,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_rounded,size: 40,color: Colors.grey,),
            activeIcon: Icon(Icons.help_rounded,size: 40,color: Colors.blue,),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
