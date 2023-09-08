import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: CustomAppBar(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(
                        text: 'This is mod 5 Assignment',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                            fontSize: 22))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'My',
                        style: TextStyle(fontSize: 28, color: Colors.red),
                        children: const <TextSpan>[
                          TextSpan(
                            text: ' phone',
                            style: TextStyle(fontSize: 14, color: Colors.green),
                          ),
                          TextSpan(
                              text: ' name',
                              style: TextStyle(
                                  color: Colors.purpleAccent, fontSize: 20,fontWeight: FontWeight.w500)),
                          TextSpan(
                              text: ' Your phone name',
                              style: TextStyle(
                                  color: Colors.redAccent, fontSize: 28)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.green,
        elevation: 70.0,
        centerTitle: true,
        title: Center(child: Text("Home"),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.add_business_sharp),
          onPressed: () {},
        ),
      );
  }
}
