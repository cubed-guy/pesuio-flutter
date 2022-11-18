import 'package:flutter/material.dart';
import 'package:flutter_project/Redux/actions.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../Redux/store.dart';

class Profile extends StatefulWidget {
  static const routeName = '/profile';
  final String name;
  final String srn;
  final String phoneNo;
  const Profile({Key? key,required this.name,required this.srn,required this.phoneNo}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String phoneNo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'PESU',
                style: TextStyle(
                  fontSize: 36.0,
                  color: Colors.blue,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                'assets/images/cactus.jpg',
                height: MediaQuery.of(context).size.width * 0.5,
              ),
              Text(
                widget.name,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Lato',
                ),
              ),
              Text(
                widget.srn,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Lato',
                ),
              ),
              Text(
                widget.phoneNo,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Lato',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.05,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          StoreProvider.of<AppState>(context).dispatch(
            RemoveStudent(studentSRN: widget.srn)
          );
          Navigator.pop(context);
        },
        child: Icon(Icons.delete),
      )
    );
  }
}
