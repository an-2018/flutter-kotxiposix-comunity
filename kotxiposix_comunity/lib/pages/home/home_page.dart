import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: ,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Colors.amber,
                  child: Text("COlum1"),
                ),
                Container(
                  color: Colors.blue,
                )
              ],
            ),
            Center(
              child: Text("Main"),
            ),
          ],
        ),
      ),
    );
  }
}

class SideMenu extends StatelessWidget {
  SideMenu({Key key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Container(
                color: Colors.amber,
                child: Text(
                  "Menu",
                  style: TextStyle(fontSize: 32),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
