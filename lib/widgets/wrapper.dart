import 'package:flutter/material.dart';
import '../views/account_view.dart';
import '../views/home_view.dart';
import '../views/invest_view.dart';
import '../views/savings_view.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _selectedViewIndex = 0;
  final List<Widget> _screens = [
    HomeView(),
    SavingsView(),
    InvestView(),
    AccountView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        currentIndex: _selectedViewIndex,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.grey,
        elevation: 5.0,
        // selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedViewIndex == 0
                  ? Theme.of(context).primaryColor
                  : null,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes,
                color: _selectedViewIndex == 1
                    ? Theme.of(context).primaryColor
                    : null),
            title: Text('Savings'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplanemode_active,
                color: _selectedViewIndex == 2
                    ? Theme.of(context).primaryColor
                    : null),
            title: Text('Investment'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
                color: _selectedViewIndex == 3 ? Colors.blue.shade700 : null),
            title: Text('Account'),
            // activeIcon: Column(
            //   children: <Widget>[
            //     Icon(Icons.golf_course, size:40, color:Colors.blue[900]),
            //     // Text('Home'),
            //     Icon(Icons.donut_large),
            //   ],
            // )
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedViewIndex = index;
          });
        },
      ),
      body: _screens[_selectedViewIndex],
    );
  }
}
