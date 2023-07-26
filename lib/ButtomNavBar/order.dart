import 'package:flutter/material.dart';

var order = SizedBox(
  height: 400,
  child: ListView(
    shrinkWrap: true,
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text('Orders',
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
        child: Text('Manage your  orders',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      const SizedBox(
        height: 20,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text('You will get notified when you reciew your first order.',
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
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          child: const Text('Create order',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
      ),
    ],
  ),
);
