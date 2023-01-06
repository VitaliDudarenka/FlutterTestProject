import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsersList extends StatefulWidget {
  @override
  _UsersListState createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  final List<String> users = ["Tom", "Alice", "Sam", "Bob", "Kate"];
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          selectedIndex == -1
              ? "Not selected"
              : "Selected: ${users[selectedIndex]}",
          style: TextStyle(fontSize: 30),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: users.length,
          itemBuilder: _createListTileView))
      ],
    );
  }

  Widget _createListView(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        padding: EdgeInsets.symmetric(vertical: 8),
        color: index == selectedIndex ? Colors.black12 : Colors.white60,
        child: Text(
          users[index],
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  Widget _createListTileView(BuildContext context, int index) {
    return ListTile(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      title: Text(
        users[index],
        style: TextStyle(fontSize: 24),
      ),
      selected: index == selectedIndex,
      selectedTileColor: Colors.black12,
    );
  }
}
