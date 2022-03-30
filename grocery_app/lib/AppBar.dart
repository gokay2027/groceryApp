import 'package:flutter/material.dart';

class HandMadeAppBar extends StatelessWidget {
  const HandMadeAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(50, 60, 70, 1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 12,
      child: Stack(
        children: <Widget>[
          Center(
            child: Text(
              'E-Commercial App',
              style: TextStyle(
                  color: Colors.white, fontSize: 23, fontFamily: 'Montserrat'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                alignment: Alignment.centerLeft,
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  print("Open Drawer");
                }),
          )
        ],
      ),
    );
  }
}
