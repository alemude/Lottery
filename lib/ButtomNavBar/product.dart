import 'package:flutter/material.dart';

import '../CreateOrder/createOrder.dart';
class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
  height: 400,
  child: ListView(
    shrinkWrap: true,
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text('Products',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
      Container(
        height: 0.6,
        color: Colors.black,
      ),
      const SizedBox(
        height: 20,
      ),
      Center(
        child: CircleAvatar(
          radius: 50,
          child: ClipOval(
            child: Image.asset(
              'assets/4.jpg',
              fit: BoxFit.cover,
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text('First up: Add your products',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      const SizedBox(
        height: 20,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text('To satrt selling your product, migrate your product now',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
      ),
      const SizedBox(
        height: 20,
      ),
            Container(
        height: 0.6,
        color: Colors.black,
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: ElevatedButton(
          onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreateOrder()));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          child: const Text('Add your product',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
      ),
    ],
  ),
    );
  }
}
