import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final appTitle = 'ComeAqui';
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(title: appTitle),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  //_TabbedPageState createState() => _TabbedPageState();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).primaryColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              title: Text('Mapa'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              title: Text('Ofertas'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help),
              title: Text('Infos'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Infos'),
            ),
          ],
          /*currentIndex: _selectedIndex,*/
          selectedItemColor: Colors.white,
          /*onTap: _onItemTapped,*/
        ),
      ),
    );
  }
}

//class _TabbedPageState extends State<