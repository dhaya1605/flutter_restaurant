import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/styles.dart';
import 'package:restaurant/widgets/categoryItem.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:developer';
import 'package:geodesy/geodesy.dart';
import 'dart:math';




class menuPage extends StatefulWidget {
  @override
  _menuPageState createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> with SingleTickerProviderStateMixin {
  @override


  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    menu1(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    cart(),
  ];
//  final List<Tab> myTabs = <Tab>[
//    Tab(text: 'LEFT'),
//    Tab(text: 'RIGHT'),
//  ];
//
//  TabController _tabController;
//
//  @override
//  void initState() {
//    super.initState();
//    _tabController = TabController(vsync:this,length: myTabs.length);
//  }
//
//  @override
//  void dispose() {
//    _tabController.dispose();
//    super.dispose();
//  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.person),
        ),
        title: RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: 'fast',
                style: TextStyle(color: secondaryColor),
              ),
              TextSpan(
                text: 'food',
                style: TextStyle(color: primaryColor),
              )
            ]
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.fastfood),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book_rounded),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: SingleChildScrollView(child: _widgetOptions.elementAt(_selectedIndex)),
    );
  }
}




class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Offers & Discounts",
            style: TextStyle(fontWeight: FontWeight.bold, color: primaryColor),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            height: 166,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
//              image: DecorationImage(
//                fit: BoxFit.fill,
////                image: AssetImage("assets/images/beyond-meat-mcdonalds.png"),
//                  image: AssetImage("assets/images/login.png"),
//              ),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                   colors: [
                    Color(0xFFFF961F).withOpacity(0.7),
                    primaryColor.withOpacity(0.7),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
//                    Expanded(
//                      child: SvgPicture.asset("assets/icons/gift.svg",color: Colors.blueGrey[100],
//                        matchTextDirection: true,),
//
//                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(
                              text: "Get Discount of \n",
                              style: TextStyle(fontSize: 16),
                            ),
                            TextSpan(
                              text: "30% \n",
                              style: TextStyle(
                                fontSize: 43,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                              "at MacDonald's on your first order & Instant cashback",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class foodcard extends StatefulWidget {
  @override
  _foodcardState createState() => _foodcardState();
}

class _foodcardState extends State<foodcard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image(
            width: MediaQuery.of(context).size.width *0.45,
              height: MediaQuery.of(context).size.height*0.2,
              image: AssetImage("assets/images/login.png")),
          Text("food"),
          Row(
            children: [
              Text("50"),

            ],
          )


        ],
      ),
    );
  }
}

class menu1 extends StatefulWidget {
  @override
  _menu1State createState() => _menu1State();
}

class _menu1State extends State<menu1> with SingleTickerProviderStateMixin {
  @override
  TabController _tabController;

  @override
  void initState()
  {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this);
  }


  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DiscountCard(),

        new Container(
          decoration: new BoxDecoration(color: Theme.of(context).primaryColor),
          child: Material(
            color: Colors.white,
            child: new TabBar(
              controller: _tabController,
              labelColor: secondaryColor,
              isScrollable: true,
              indicatorColor: primaryColor,
              indicatorWeight: 3.0,
              labelPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
              tabs: [
                new Tab(
//                      icon: const Icon(Icons.home),
                  text: 'All',
                ),
                new Tab(
//                      icon: const Icon(Icons.my_location),
                  text: 'Starters',
                ),
                new Tab(
//                      icon: const Icon(Icons.my_location),
                  text: 'Main',
                ),
                new Tab(
//                      icon: const Icon(Icons.my_location),
                  text: 'Desserts',
                ),

              ],
            ),
          ),
        ),
        new Container(
          height: MediaQuery.of(context).size.height,
          child: new TabBarView(
            controller: _tabController,
            children: <Widget>[
              ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[

                  ListTile(
                    leading: Image(image: AssetImage("assets/images/3.jpg"),width: MediaQuery.of(context).size.width*0.2,),
                    title: Text('French Fries'),
                    subtitle: Text('Rs.50'),
                    trailing: OutlineButton(
                      child: Text("ADD +",style: TextStyle(color: primaryColor),),
                    ),
                  ),
                  ListTile(
                    leading: Image(image: AssetImage("assets/images/4.jpeg"),width: MediaQuery.of(context).size.width*0.2,),
                    title: Text('Chicken nuggets'),
                    subtitle: Text('Rs.100'),
                    trailing: OutlineButton(
                      child: Text("ADD +",style: TextStyle(color: primaryColor),),
                    ),
                  ),
                  ListTile(
                    leading: Image(image: AssetImage("assets/images/2.jpg"), width: MediaQuery.of(context).size.width*0.2,),
                    title: Text('Potato nuggets'),
                    subtitle: Text('Rs.80'),
                    trailing: OutlineButton(
                      child: Text("ADD +",style: TextStyle(color: primaryColor),),
                    ),
                  ),
                  ListTile(
                    leading: Image(image: AssetImage("assets/images/3.jpg"),),
                    title: Text('French Fries'),
                    subtitle: Text('Rs.50'),
                    trailing: OutlineButton(
                      child: Text("ADD +",style: TextStyle(color: primaryColor),),
                    ),
                  ),
                ],
              ),
              new Card(
                child: new ListTile(
                  leading: const Icon(Icons.location_on),
                  title: new Text('Latitude: 48.09342\nLongitude: 11.23403'),
                  trailing: new IconButton(icon: const Icon(Icons.my_location), onPressed: () {}),
                ),
              ),
              new Card(
                child: new ListTile(
                  leading: const Icon(Icons.home),
                  title: new TextField(
                    decoration: const InputDecoration(hintText: 'Search for address...'),
                  ),
                ),
              ),new Card(
                child: new ListTile(
                  leading: const Icon(Icons.home),
                  title: new TextField(
                    decoration: const InputDecoration(hintText: 'Search for address...'),
                  ),
                ),
              ),
            ],
          ),
        ),




      ],
    );
  }
}


class cart extends StatefulWidget {
  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  double p1 = 35.421;
  double p2 = -120.084;
  Position loc;
  Geodesy geodesy = Geodesy();
   getloc() async{
    LocationPermission permission = await Geolocator.requestPermission();
    bool isLocationServiceEnabled  = await Geolocator.isLocationServiceEnabled();
    if(isLocationServiceEnabled){
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      print(position.longitude);
      loc = position;
      return position;
    }
  }
  distance() async{

     double l1 = loc.longitude;
     double l2 = loc.latitude;
     LatLng l11 = LatLng(l2,l1);
     LatLng l22 = LatLng(p1,p2);
     num dis = geodesy.distanceBetweenTwoGeoPoints(l11,l22);
     print(dis);

     print(dis/1000);


  }
// double calculateDistance(lat1, lon1, lat2, lon2) {
//    
//   double p =
//    var c = cos;
//    double a = 0.5 - c((lat2 - lat1) * p)/2 +c(lat1 * p) * c(lat2 * p) *(1 - c((lon2 - lon1) * p))/2;
//    return 12742 * asin(sqrt(
//   a
//   )
//   );
//    
// }



  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FlatButton(onPressed: getloc, child: Text("location")),
          Text("$loc"),
          FlatButton(onPressed: distance, child: Text("location")),

        ],

      ),
    );
  }
}
