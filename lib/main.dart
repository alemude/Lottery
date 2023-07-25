import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Order Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Product Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Store Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  var icon = const Icon(
    Icons.collections,
    color: Colors.black,
  );
  var bdg = Color.fromARGB(255, 204, 198, 198);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter BottomNavigationBar Example'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
            backgroundColor: bdg,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.download_for_offline_outlined),
            label: 'Orders',
            backgroundColor: bdg,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.store_outlined),
            label: 'Products',
            backgroundColor: bdg,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.collections),
            label: 'Store',
            backgroundColor: bdg,
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 4, 97, 13),
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}
