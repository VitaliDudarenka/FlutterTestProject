import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_project/feature/catalog/presentation/pages/catalog_tab.dart';
import 'package:test_flutter_project/feature/universities/data/datasources/universities_remote_data_source.dart';
import 'package:test_flutter_project/feature/universities/data/repositories/university_repository_impl.dart';
import 'package:test_flutter_project/feature/universities/presentation/pages/universities_tab.dart';
import 'package:test_flutter_project/resources/colors.dart';
import 'package:test_flutter_project/resources/strings.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RepositoryProvider(
        create: (context) =>
            UniversityRepositoryImpl(UniversityRemoteDataSourceImpl()),
        child: const CustomNavigationBar(),
      ),
    );
  }
}

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    UniversityListWidget(),
    CatalogWidget(),
    Text('Sales Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CustomColors.bottomGrey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.attribution_rounded),
              label: Strings.tour,
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: Strings.catalog,
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: Strings.sales,
            backgroundColor: Colors.transparent,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        iconSize: 24,
        onTap: _onItemTapped,
        elevation: 5,
        key: null,
      ),
    );
  }
}
