import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container secondBord(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.15,
    width: MediaQuery.of(context).size.height * 0.35,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(22.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0.0, 1.0), //(x,y)
          blurRadius: 6.0,
        ),
      ],
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Test Results',
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(0, 122, 255, 1),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [],
            color: Color.fromRGBO(0, 122, 255, 1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              'View',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Container mainBord(BuildContext context, int counter, String it) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.58,
    width: MediaQuery.of(context).size.height * 0.36,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(22.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0.0, 1.0), //(x,y)
          blurRadius: 6.0,
        ),
      ],
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                text: '$counter',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.26,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(0, 122, 255, 1),
                ),
              ),
              WidgetSpan(
                child: Transform.translate(
                  offset: const Offset(1, -100),
                  child: Text(
                    '$it',
                    textScaleFactor: 0.9,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.05,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 122, 255, 1),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
        Text(
          'Module',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.06,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(0, 122, 255, 1),
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
              color: CupertinoColors.systemGrey.withOpacity(0.15),
              borderRadius: BorderRadius.circular(12.0)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'CBSE Std VIII',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 122, 255, 1),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Color.fromRGBO(0, 122, 255, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [],
            color: Color.fromRGBO(0, 122, 255, 1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              'View',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
