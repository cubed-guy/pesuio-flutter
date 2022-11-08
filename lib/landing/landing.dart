import 'package:flutter/material.dart';

import '../profile/profile.dart';

class Landing extends StatefulWidget {
  static const routeName = "/";
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.05),
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile(
                        name: "Sanket",
                        srn: "PES77"))
                  );
                },
                child: ListTile(
                  title: Text("OK"),
                  subtitle: Text("ALright!")
                )
              ),
              ListTile(
                title: Text("It's my app!"),
                subtitle: Text("It's awesome!"),
              ),
              ListTile(
                title: Text("It's my app!"),
                subtitle: Text("It's awesome!"),
              ),
            ],
          ),
        )
      )
    );
  }
}
