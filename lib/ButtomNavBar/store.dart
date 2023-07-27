import 'package:flutter/material.dart';
import 'package:loto/Product/addProduct.dart';

var store = ListView(children: [
  Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      SizedBox(
        width: 120,
        child: DropdownButton(
          dropdownColor: const Color.fromARGB(255, 223, 216, 216),
          borderRadius: BorderRadius.circular(10),
          items: const [
            DropdownMenuItem(
              value: 1,
              child: Text('Beds'),
            ),
            DropdownMenuItem(
              value: 2,
              child: Text('Seatings'),
            ),
            DropdownMenuItem(
              value: 3,
              child: Text('Closets'),
            ),
            DropdownMenuItem(
              value: 3,
              child: Text('Others'),
            ),
          ],
          onChanged: (value) {},
          hint: const Text(
            'My Store',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 4, 72, 25)),
          ),
        ),
      ),
    ],
  ),
        Container(
        height: 0.6,
        color: Colors.black,
      ),
  InkWell(
    onTap: () { 
    },
    child: const Chip(
      backgroundColor: Colors.white,
      avatar: Icon(Icons.person),
      label: Row(
        children: <Widget>[
          SizedBox(width: 4),
          Text('Customers'),
        ],
      ),
    ),

  ),
  Container(
        height: 0.6,
        color: Colors.black,
      ),
  InkWell(
    onTap: () { 
    },
    child: const Chip(
      backgroundColor: Colors.white,
      avatar: Icon(Icons.discount),
      label: Row(
        children: <Widget>[
          SizedBox(width: 4),
          Text('Discounts'),
        ],
      ),
    ),

  ),
  Container(
        height: 0.6,
        color: Colors.black,
      ),
  InkWell(
    onTap: () { 
    },
    child: const Chip(
      backgroundColor: Colors.white,
      avatar: Icon(Icons.speaker),
      label: Row(
        children: <Widget>[
          SizedBox(width: 4),
          Text('Marketing'),
        ],
      ),
    ),

  ),
  Container(
        height: 0.6,
        color: Colors.black,
      ),
  InkWell(
    onTap: () { 
    },
    child: const Chip(
      backgroundColor: Colors.white,
      avatar: Icon(Icons.settings),
      label: Row(
        children: <Widget>[
          SizedBox(width: 4),
          Text('Settings'),
        ],
      ),
    ),

  ),
  Container(
        height: 0.6,
        color: Colors.black,
      ),
  InkWell(
    onTap: () { 
    },
    child: const Chip(
      backgroundColor: Colors.white,
      avatar: Icon(Icons.question_mark_rounded),
      label: Row(
        children: <Widget>[
          SizedBox(width: 4),
          Text('Support'),
        ],
      ),
    ),

  ),
  Container(
        height: 5,
        color: Color.fromARGB(255, 170, 161, 161),
      ),
  InkWell(
    onTap: () { 
    },
    child: const Chip(
      backgroundColor: Colors.white,
      avatar: Icon(Icons.upload_rounded),
      label: Row(
        children: <Widget>[
          SizedBox(width: 4),
          Column(children: [
                      Text('Sales Channels',
           style: TextStyle(fontSize: 20, 
           fontWeight: FontWeight.bold)),
                     Text('Online store',
           style: TextStyle(fontSize: 15, 
           fontWeight: FontWeight.normal),),
          ],),
          Padding(
            padding: EdgeInsets.only(left: 120),
            child: Icon(Icons.add,
            color: Colors.green,
            ),
          )
        ],
      ),
    ),

  ),
]);
