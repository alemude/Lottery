// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'ButtomNavBar/home.dart';
import 'ButtomNavBar/order.dart';
import 'Product/addProduct.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/Add': (context) => const AddProduct(),
        '/Edit': (context) => const AddProduct(),
        '/delete': (context) => const AddProduct(),
      },
      home: Scaffold(
        appBar: AppBar(
          leading: PopupMenuButton(
            icon: const Icon(Icons.menu),
            onSelected: (value) {
              setState(() {
                if(value==1){
    Navigator.push(
 context,
 MaterialPageRoute(
 builder: (context) => const AddProduct(),
 ),
 );
                }
              });
            },
            itemBuilder: (BuildContext bc) {
              return const [
                PopupMenuItem(
                  value: 1,
                  child: Text("Add product"),
                ),
                PopupMenuItem(
                  value: '/about',
                  child: Text("Edit Product"),
                ),
                PopupMenuItem(
                  value: '/contact',
                  child: Text("Delete Product"),
                )
              ];
            },
          ),
          backgroundColor:
              const Color.fromARGB(255, 8, 100, 48), // set the background color
          title: const Text('My App'), // set the title text
          centerTitle: true, // center the title text
          actions: [
            IconButton(
              icon: const Icon(Icons.search), // add a search icon button
              onPressed: () {
                // add your search functionality here
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings), // add a settings icon button
              onPressed: () {
                // add your settings functionality here
              },
            ),
          ],
        ),
        body: const MyNavigationBar(),
      ),
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
  static final List<Widget> _widgetOptions = <Widget>[
  home,
  order,
    // Text('Product Page',
    //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    // Text('Store Page',
    //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
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
  var bdg = Color.fromARGB(255, 85, 76, 76);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        selectedItemColor: Color.fromARGB(255, 2, 72, 9),
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}
