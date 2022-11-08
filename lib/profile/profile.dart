import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static const routeName = "/profile";
  final String name;
  final String srn;
  Profile({Key? key, required this.name, required this.srn}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _counter = 15;
  String _name = "";

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Container(

            margin: EdgeInsets.symmetric(
              horizontal: .1*MediaQuery.of(context).size.width,
              vertical: .1*MediaQuery.of(context).size.height,
            ),
            height: double.infinity,
            width: MediaQuery.of(context).size.width*.7,
            // color: Color(0xffffc099),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Center(
                    child: Text(
                        widget.name,
                        style: TextStyle(
                          color: Colors.accents.last,
                          fontSize: 36.0,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.bold,
                        )
                    )
                ),

                Center(
                  child: Image.asset(
                    'assets/images/cactus.jpg',
                    height: 240,
                    width: _counter.toDouble(),
                  ),
                ),

                TextField(
                  onChanged: (val) {
                    _name = val;
                    print("\x1b[95m$_name\x1b[0m");
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: "Enter Phon",
                      hintStyle: TextStyle(
                        color: Colors.white24,
                      )
                  ),
                ),

                Text("Donut",
                  style: TextStyle(
                    color: Color(0xffff80e0),
                    fontFamily: "IslandMoments",
                  ),
                ),

                Text("Marshmallow",
                    style: TextStyle(
                      color: Colors.grey,
                    )
                ),

                Text("Estuary",
                    style: TextStyle(
                      color: Colors.blue,
                    )
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: _incrementCounter,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: Text("$_counter"),
                        )
                    ),
                    ElevatedButton(
                        onPressed: () {
                          print("\x1b[92mPresent!\x1b[0m");
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(widget.srn),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
