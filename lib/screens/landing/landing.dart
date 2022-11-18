import 'package:flutter/material.dart';
import 'package:flutter_project/Redux/store.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../models/student.dart';
import '../../screens/input/input.dart';
import '../../screens/profile/profile.dart';

class Landing extends StatefulWidget {
  static const routeName = '/';
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  late BuildContext appStateContext;
  List<Student> students = [
    Student(name: 'Me', srn: 'Pes2ug19csxyz', phoneNo: '9999'),
    Student(name: 'Myself', srn: 'Pes2ug19csxyz', phoneNo: '9999'),
    Student(name: 'Pi', srn: 'Pes2ug19csxyz', phoneNo: '9999')
  ];
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) {
        appStateContext = context;
        return Scaffold(
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(
                  vertical: MediaQuery
                      .of(context)
                      .size
                      .height * 0.05,
                  horizontal: MediaQuery
                      .of(context)
                      .size
                      .width * 0.1),
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: ListView(
                children: [
                  Image.asset(
                    'assets/images/cactus.jpg',
                    height: MediaQuery
                        .of(context)
                        .size
                        .width * 0.5,
                  ),
                  SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.1,
                  ),
                  // ...students
                      ...StoreProvider.of<AppState>(appStateContext)
                      .state
                      .students!
                      .map(
                        (e) =>
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Profile(name: e.name,
                                          srn: e.srn,
                                          phoneNo: e.phoneNo,)));
                          },
                          child: ListTile(
                            title: Text(e.name),
                            subtitle: Text(e.srn),
                            trailing: FaIcon(
                              FontAwesomeIcons.user,
                            ),
                          ),
                        ),
                  )
                      .toList(),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Input.routeName);
            },
            child: Icon(Icons.add),
          ),
        );
      }
    );
  }
}
