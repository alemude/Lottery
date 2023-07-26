import 'package:flutter/material.dart';

var home =ListView(
  children:   [
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text('Home',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
      ),
         const Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text('Welcome to furniture,Alemu',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
      ),
            const SizedBox(
        height: 10,
      ),
        Container(
        height: 0.6,
        color: Colors.black,
      ),
            Stack(
       fit: StackFit.passthrough,
       children: <Widget>[
Container(
            color: Colors.green,
            child: const Center(
                child: Image(
              image: AssetImage('assets/1.jpg'),
              fit: BoxFit.contain,
            )),
          ),
          Positioned(
            top: 30,
            right: 20,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.blue,
              child: const Center(
                  child: Image(
                    image: AssetImage('assets/10.jpg'),
                    fit: BoxFit.contain,
                  ),
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 150,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {},
                child: const Text(
                  'See now',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Positioned(
              top: 30,
              left: 20,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.orange,
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/11.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              )),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
                
      Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          // Max Size Widget
          Container(
            color: Colors.green,
            child: const Center(
                child: Image(
              image: AssetImage('assets/b1.jpg'),
              fit: BoxFit.contain,
            )),
          ),
          Positioned(
            top: 150,
            left: 150,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {},
                child: const Text(
                  'See now',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
  ],
 );
