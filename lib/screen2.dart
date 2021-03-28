import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:gojek/screen3.dart';

class page2 extends StatefulWidget {
  @override
  _page2 createState() => _page2();
}

class _page2 extends State<page2> {
  static final List<String> imgSlider = [
    'diskon.jpg',
    'ongkos.jpg',
    'promo.jpg',
    'martabak.jpg',
    'pizza.jpg',
  ];

  final CarouselSlider autoPlayImage = CarouselSlider(
    items: imgSlider.map((fileImage) {
      return Container(
        margin: EdgeInsets.fromLTRB(10, 30, 10, 30),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          child: Image.asset(
            'images/slider/${fileImage}',
            width: 10000,
            fit: BoxFit.cover,
          ),
        ),
      );
    }).toList(),
    height: 200,
    autoPlay: true,
    enlargeCenterPage: true,
    aspectRatio: 2.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: new IconButton(
          icon: new Icon(Icons.cancel_outlined, color: Colors.black87, size: 30,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.favorite, color: Colors.black, size: 25,),
          ),
        ],
        title: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
              text: "Your Location\n",
              style: TextStyle(fontSize: 12, color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: 'Tarumanagara University Campu...',
                  style: TextStyle(
                    fontSize: 14, color: Colors.black, fontWeight: FontWeight.w900
                  ),
                ),
              ],
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new TextFormField(
              enabled: false,
              decoration: new InputDecoration(
                prefixIcon: Icon(Icons.search),
                labelText: "What would you like to eat?",
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
          autoPlayImage,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Image.asset('images/icon/calendar.png', scale: 15,),
                    width: 75,
                    height: 75,
                    decoration: boxPilihan(),
                  ),
                  SizedBox(height: 10,),
                  Text("New This Week", style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Image.asset('images/icon/map.png', scale: 15,),
                    width: 75,
                    height: 75,
                    decoration: boxPilihan(),
                  ),
                  SizedBox(height: 10,),
                  Text("Near Me", style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Image.asset('images/icon/take-away.png', scale: 15,),
                    height: 75,
                    width: 75,
                    decoration: boxPilihan(),
                  ),
                  SizedBox(height: 10,),
                  Text("Pickup", style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Image.asset('images/icon/healthy-food.png', scale: 15,),
                    height: 75,
                    width: 75,
                    decoration: boxPilihan(),
                  ),
                  SizedBox(height: 10,),
                  Text("Healthy Food", style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Image.asset('images/icon/price-tag.png', scale: 15,),
                    width: 75,
                    height: 75,
                    decoration: boxPilihan(),
                  ),
                  SizedBox(height: 10,),
                  Text("Pasti Ada Promo", style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Image.asset('images/icon/best-seller.png', scale: 15,),
                    width: 75,
                    height: 75,
                    decoration: boxPilihan(),
                  ),
                  SizedBox(height: 10,),
                  Text("Best Seller", style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Image.asset('images/icon/fried.png', scale: 15,),
                    height: 75,
                    width: 75,
                    decoration: boxPilihan(),
                  ),
                  SizedBox(height: 10,),
                  Text("Ready To Cook", style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Image.asset('images/icon/touch.png', scale: 15,),
                    height: 75,
                    width: 75,
                    decoration: boxPilihan(),
                  ),
                  SizedBox(height: 10,),
                  Text("Most Love", style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text("Choose From Cuisines", style: TextStyle(
                  fontWeight: FontWeight.w900, fontSize: 16,
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: BorderRadius.circular(75),
                  ),
                  child: Center(
                    child: Text(
                      "See all", style: TextStyle(
                      color: Colors.green[800], fontWeight: FontWeight.w900,
                    ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      'images/beverage.png',
                      height: 75,
                      width: 75,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Beverages', style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      'images/snacks.png',
                      height: 75,
                      width: 75,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Snacks', style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      'images/donat.png',
                      height: 75,
                      width: 75,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Sweets', style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      'images/rice.png',
                      height: 75,
                      width: 75,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Rice', style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),),
                ],
              ),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text("Discounts up to 60k", style: TextStyle(
                  fontWeight: FontWeight.w900, fontSize: 16,
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: BorderRadius.circular(75),
                  ),
                  child: Center(
                    child: Text(
                      "See all", style: TextStyle(
                      color: Colors.green[800], fontWeight: FontWeight.w900,
                    ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
            child: Text("Order anything with out promo."),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => page3()),
                  );
                },
                child: Container(
                  height: 220,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: HexColor("#e3e3e3"),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 125,
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/baskin.jpg"),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 90, 0),
                        child: Text("1.18 km", style: TextStyle(
                            color: Colors.black.withOpacity(.60),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("Baskin Robbins,\nCentral Park Lower...", style: TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 15,
                      ),),
                      SizedBox(height: 10,)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){

                },
                child: Container(
                  height: 220,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: HexColor("#e3e3e3"),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 125,
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/Dking.jpg"),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 90, 0),
                        child: Text("1.18 km", style: TextStyle(
                          color: Colors.black.withOpacity(.60),
                        ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                        child: Text("The Duck King,\nCentral Park", style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 15,
                        ),),
                      ),
                      SizedBox(height: 10,)
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text("Top-rated by other foodies", style: TextStyle(
                  fontWeight: FontWeight.w900, fontSize: 16,
                ),),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 5, 5),
            child: Text("Sponsored"),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: (){
                },
                child: Container(
                  height: 240,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: HexColor("#e3e3e3"),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 125,
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/bk.jpg"),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 85, 0),
                        child: Text("2.5 km", style: TextStyle(
                          color: Colors.black.withOpacity(.60),
                        ),
                        ),
                      ),
                      Text("Burger King, Cideng", style: TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 15,
                      ),),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 5, 5, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(Icons.star, color: Colors.amber,),
                            Text("4.6"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){

                },
                child: Container(
                  height: 240,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: HexColor("#e3e3e3"),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 125,
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/familymart.jpg"),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 90, 0),
                        child: Text("0.5 km", style: TextStyle(
                          color: Colors.black.withOpacity(.60),
                        ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
                        child: Text("FamilyMart,\nTanjung Duren", style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 15,
                        ),),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 5, 5, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(Icons.star, color: Colors.amber, ),
                            Text("4.8"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white.withOpacity(.60),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore, color: Colors.red,),
            label : 'Explore',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.store,),
              label : 'Pickup',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.cut_outlined),
              label: 'Promos',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list),
              label: 'History',
          ),
        ],
      ),
    );
  }
}

BoxDecoration boxPilihan() {
  return BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.black38),
    borderRadius: BorderRadius.all(
        Radius.circular(15.0), //
    ),
  );
}