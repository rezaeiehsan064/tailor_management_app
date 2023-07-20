import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:tailor_management_app/add_castomeres.dart';
import 'package:tailor_management_app/search_bar.dart';

class main_page extends StatefulWidget {
  const main_page({super.key});


  @override
  State<main_page> createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  var name = 'Bashir Ahmad';
  String textFieldValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Bashir Ahmad tailor management',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
              accountEmail: Text(
                '0796656954',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Text(
                  name[0],
                  style: TextStyle(fontSize: 35),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/splash.jpg'), fit: BoxFit.cover),
              ),
            ),
            ListTile(
              title: Text('مشتری های فعال'),
              leading: IconButton(
                  onPressed: () {
                    // Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => active_castomer(),));
                    setState(() {});
                  },
                  icon: Icon(Icons.people_alt)),
            ),
            ListTile(
              title: Text('مشتری های غیر فعال'),
              leading: IconButton(
                  onPressed: () {
                    setState(() {});
                  },
                  icon: Icon(Icons.no_accounts_outlined)),
            ),
            ListTile(
              title: Text('مشتری جدید'),
              leading: IconButton(
                  onPressed: () {
                    // Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => PersonPage(),),);
                    setState(() {});
                  },
                  icon: Icon(Icons.woman)),
            ),
            ListTile(
              title: Text('کارمندان'),
              leading: IconButton(
                  onPressed: () {
                    // Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => Empoloye(),),);
                  },
                  icon: Icon(Icons.group_add)),
            ),
            ListTile(
              title: Text('تم'),
              leading: IconButton(
                  icon: Icon(Icons.brightness_4), // ایکون کشاورزی روشن و تیره
                  onPressed: () {}),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(
          'مدریت خیاطی',
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child: Icon(Icons.people_alt),
            label: 'مشتری های فعال',
            onTap: () {
              // این قسمت را به صفحه مورد نظر خود تغییر دهید
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => active_castomer()),
              // );
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.woman),
            label: 'مشتری جدید',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => add_castomeres(),
                ),
              );
            },
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            child: SearchBar(),
          ),
          Expanded(
            child: ListView.builder(
          itemCount: textFieldValue.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(textFieldValue),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
