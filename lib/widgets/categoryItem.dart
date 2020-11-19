import 'package:flutter/material.dart';
import 'package:restaurant/styles.dart';
//
//class category_item extends StatelessWidget {
//  final String title;
//  final bool isActive;
//  final Function press;
//  const category_item({
//    Key key,
//    this.title,
//    this.isActive = false,
//    this.press,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return GestureDetector(
//      onTap: press,
////        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//        child: Column(
//          children: <Widget>[
//            Text(
//              title,
//              style: isActive
//                  ? TextStyle(
//                color: Colors.black,
//                fontWeight: FontWeight.bold,
//              )
//                  : TextStyle(fontSize: 12),
//            ),
//            if (isActive)
//              Container(
//                margin: EdgeInsets.symmetric(vertical: 5),
//                height: 3,
//                width: 22,
//                decoration: BoxDecoration(
//                  color: primaryColor,
//                  borderRadius: BorderRadius.circular(10),
//                ),
//              ),
//          ],
//        ),
//
//    );
//  }
//}
class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({ Key key }) : super(key: key);
  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height*0.5,
      child:TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab) {
          final String label = tab.text.toLowerCase();
          return Center(
            child: Text(
              'This is the $label tab',
              style: const TextStyle(fontSize: 36),
            ),
          );
        }).toList(),
      ),),
    );
  }
}