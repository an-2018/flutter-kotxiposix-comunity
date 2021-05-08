import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        title: Text("App"),
      ),
      body: SafeArea(
        child: Container(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.amber,
                ),
              ),
              Expanded(
                  flex: 6,
                  child: Container(
                    color: Colors.white70,
                    child: Column(
                      children: [
                        Container(
                          height: 64,
                          color: Colors.blue,
                          child: Row(
                            children: [
                              Container(
                                height: 32,
                                width: double.maxFinite,
                                color: Colors.amber,
                                child: Text(""),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
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
