import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class page3 extends StatefulWidget{
  @override
  _page3State createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black87, size: 30,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search, color: Colors.black, size: 25,),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.share, color: Colors.black, size: 25,),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Baskin Robbins, Central Park\nLower Ground", style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w900, fontSize: 20,
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: HexColor("#e3e3e3"),
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage("images/baskin2.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.00),
                child: Center(
                    child: Container(
                      height: 30,
                      width: 135,
                      decoration: BoxDecoration(
                        color: Colors.orange[600],
                        borderRadius: BorderRadius.circular(75),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.thumb_up_alt, color: Colors.white,),
                            Text("Super Partner", style: TextStyle(
                              color: Colors.white,
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Sweets", style: TextStyle(
                  fontWeight: FontWeight.w300
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: HexColor("#e3e3e3"),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.amber, ),
                        Text("4.1", style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text("60+ ratings"),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.location_on, color: Colors.red,),
                        Text("0.83 km", style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text("21 min"),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(r"$$$$", style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),)
                      ],
                    ),
                    SizedBox(height: 12,),
                    Text("over 100k"),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.thumb_up, color: Colors.red,),
                        Text("Great taste", style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text("7 ratings"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Image.asset('images/icon/take-away.png', scale: 13,),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child:Text("Pickup: collect order at resto", style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 16
                        ),),
                    ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 45, 0),
                    child: Text("Food'll be ready in 8 min", style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w300,
                    ),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Icon(Icons.info, size: 26,),
              )
            ],
          ),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.only(left: 8.00),
            child: Text("Available promos", style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: 20,
            ),),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.account_balance_wallet, size: 20, color: Colors.blue,),
                    SizedBox(width: 8,),
                    Text("60k food discount. Min. order 200k with GoPay."),
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Icon(Icons.arrow_right, size: 24,),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.cut, size: 20, color: Colors.red,),
                    SizedBox(width: 8,),
                    Text("7k delivery discount. No Min. Order"),
                    Padding(
                      padding: EdgeInsets.fromLTRB(102, 0, 0, 0),
                      child: Icon(Icons.arrow_right, size: 24,),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 10,
                  decoration: BoxDecoration(
                    color: HexColor("#e3e3e3"),
                  ),
                ),
                SizedBox(height: 10,),
                Text("Buy 1 Get 1 Free #DiRumahAja", style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w900,
                    ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text("Buy 1 get 1 free Single Scoop -\nJajan Seru", style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 18,
                          ),),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(right: 40.0),
                            child: Text("Buy 1 get 1 free. Maksimal 1 rasa", style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14,
                            ),),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 70.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("65.000", style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w800,
                                ),),
                                SizedBox(width: 10,),
                                Text("130.000", style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14, decoration: TextDecoration.lineThrough,
                                ),),
                                SizedBox(width: 10,),
                                Container(
                                  height: 25,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(75),
                                  ),
                                  child: Center(
                                    child: Text("Promo",style: TextStyle(
                                      color: Colors.white,
                                    ),),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/baskin3.jpg'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.favorite, size: 22,
                        color: HexColor("#b5b2b1"),
                      ),
                      Container(
                        height: 25,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(75),
                        ),
                        child: Center(
                          child: Text("Add",style: TextStyle(
                            color: Colors.white,
                          ),),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text("Buy 1 get 1 free Value Scoop -\nJajan Seru", style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 18,
                          ),),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text("Buy 1 get 1 free. Ukuran per1 cup 4oz.\nMaksimal 1 rasa", style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14,
                            ),),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 70.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("85.000", style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w800,
                                ),),
                                SizedBox(width: 10,),
                                Text("170.000", style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14, decoration: TextDecoration.lineThrough,
                                ),),
                                SizedBox(width: 10,),
                                Container(
                                  height: 25,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(75),
                                  ),
                                  child: Center(
                                    child: Text("Promo",style: TextStyle(
                                      color: Colors.white,
                                    ),),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/baskin4.jpg'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.favorite, size: 22,
                        color: HexColor("#b5b2b1"),
                      ),
                      Container(
                        height: 25,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(75),
                        ),
                        child: Center(
                          child: Text("Add",style: TextStyle(
                            color: Colors.white,
                          ),),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(75),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Image.asset('images/icon/tudungsaji.png', scale: 16,),
                      Text("Menu", style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),),
                      ],
                   ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}