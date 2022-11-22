import 'package:flutter/material.dart';

class CardBands extends StatelessWidget{

  String imagePath = "";
  String bandName = "";
  String genre = "";

  CardBands(this.imagePath, this.bandName, this.genre);

  @override
  Widget build(BuildContext context) {

    final imageView = Container(
      margin: EdgeInsets.only(
        left: 10
      ),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(imagePath)
        )
      ),
    );

    final contentText = Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bandName,
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Merriweather",
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            genre,
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Merriweather",
                fontSize: 14,
                fontStyle: FontStyle.italic
            ),
          )
        ],
      ),
    );

    final icon = Center(
      child: CircleAvatar(
        backgroundColor: Colors.green,
        radius: 15,
        child: Icon(
          Icons.play_arrow,
          color: Colors.black,
        ),
      ),
    );

    return Container(
      decoration: BoxDecoration(
        color: Colors.black12
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10
      ),
      child: Row(
        children: [
          imageView,
          Container(
            width: MediaQuery.of(context).size.width-105,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                contentText,
                icon
              ],
            ),
          )
        ],
      ),
    );
  }
}