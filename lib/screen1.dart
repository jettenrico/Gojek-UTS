import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:gojek/screen2.dart';

class IconItem extends StatelessWidget {
  const IconItem({Key key, this.images, this.title, this.textcolor})
      : super(key: key);
  final String images;
  final String title;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(
        children: <Widget>[
          Image.asset(
            images,
            scale: 3,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(color: textcolor ?? Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class MainScreen extends StatefulWidget{
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.orange[900],
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                    color: Colors.orangeAccent),
                tabs: <Widget>[
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.content_cut),
                        Text('Promo', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.house),
                        Text('Home', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.chat_outlined),
                        Text('Chat', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        extendBody: true,
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text('This Page is under Maintenance!', style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: 20,
              ),),
            ),
            isiHome(),
            Center(
              child: Text('This Page is under Maintenance!', style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w900,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}

class isiHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(15, 20, 10, 20),
                  child: new TextFormField(
                    enabled: false,
                    decoration: new InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.black,),
                      labelText: "Order the best nasgor in town...",
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
              ),
              const Icon(Icons.account_circle, color: Colors.green,size: 45.0,),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 110,
              decoration: boxGopay(),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 120,
                      height: 75,
                      margin: EdgeInsets.only(left: 15),
                      decoration: boxGopayKecil(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset('images/icon/gopay.png', scale: 11,),
                          Text(
                            'Rp20.500',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                            child: Text(
                              'Tap for History',
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w900,
                                fontSize: 14,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
                      child: IconItem(
                        images: 'images/icon/pay.png',
                        title: 'Pay',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
                      child: IconItem(
                        images: 'images/icon/topup.png',
                        title: 'Top Up',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
                      child: IconItem(
                        images: 'images/icon/explore.png',
                        title: 'Explore',
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 0, 15),
            child: Text(
              "Services you have'nt tried",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                decoration: boxServices1(),
                height: 270,
                width: 175,
              ),
              Container(
                decoration: boxServices2(),
                height: 270,
                width: 175,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 0, 15),
            child: Text(
              "Top picks for you",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(color: Colors.white)),
                      color: Colors.green,
                      onPressed: () {
                        print("All");
                      },
                      textColor: Colors.white,
                      child: Text("All")),
                  SizedBox(
                    width: 3,
                  ),
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(color: Colors.white)),
                      color: Colors.green,
                      textColor: Colors.white,
                      onPressed: () {
                        print("COVID-19");
                      },
                      child: Text("Covid-19")),
                  SizedBox(
                    width: 3,
                  ),
                  FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(color: Colors.white)),
                      color: Colors.green,
                      onPressed: () {
                        print("Fun");
                      },
                      textColor: Colors.white,
                      child: Text("Fun")),
                  SizedBox(
                    width: 3,
                  ),
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(color: Colors.white)),
                      color: Colors.green,
                      textColor: Colors.white,
                      onPressed: () {
                        print("J3K");
                      },
                      child: Text("J3K")),
                  SizedBox(
                    width: 3,
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  FloatingActionButton(
                    heroTag: "btngocar",
                    onPressed: (){
                      underMaintenance(context);
                    },
                    backgroundColor: Colors.green,
                    child: Icon(Icons.directions_car, color: Colors.white,),
                  ),
                  Text("GoCar", style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                ],
              ),
              Column(
                children: <Widget>[
                  FloatingActionButton(
                    heroTag: "btngofood",
                    onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => page2()),
                      );
                    },
                    backgroundColor: Colors.red,
                    child: Icon(Icons.fastfood_rounded, color: Colors.white,),
                  ),
                  Text("GoFood", style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
              Column(
                children: <Widget>[
                  FloatingActionButton(
                    heroTag: "btngoshop",
                    onPressed: (){
                      underMaintenance(context);
                    },
                    backgroundColor: Colors.green,
                    child: Icon(Icons.shopping_cart_rounded, color: Colors.white,),
                  ),
                  Text("GoShop", style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
              Column(
                children: <Widget>[
                  FloatingActionButton(
                    heroTag: "btngomed",
                    onPressed: (){
                      underMaintenance(context);
                    },
                    backgroundColor: Colors.red,
                    child: Icon(Icons.medical_services_outlined, color: Colors.white,),
                  ),
                  Text("GoMed", style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

BoxDecoration boxGopay() {
  return BoxDecoration(
    color: HexColor("##007399"),
    borderRadius: BorderRadius.all(
        Radius.circular(20.0) //
    ),
  );
}

BoxDecoration boxGopayKecil() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(
        Radius.circular(15.0) //
    ),
  );
}

BoxDecoration boxServices1() {
  return BoxDecoration(
    image: new DecorationImage(
      image: new AssetImage("images/gosend.jpg"),
      fit: BoxFit.fill,
    ),
    borderRadius: BorderRadius.all(
        Radius.circular(15.0) //
    ),
  );
}

BoxDecoration boxServices2() {
  return BoxDecoration(
    image: new DecorationImage(
      image: new AssetImage("images/partner.jpg"),
      fit: BoxFit.fill,
    ),
    borderRadius: BorderRadius.all(
        Radius.circular(15.0) //
    ),
  );
}

underMaintenance(BuildContext context) {

  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text("Error!"),
    content: Text("We Are Sorry,\nThis section is under Maintenance!"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
