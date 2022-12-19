import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../profiles/edit_profile.dart';

import '../../utils/constants.dart';

class PerfilScreen extends StatefulWidget {
  const PerfilScreen({Key? key}) : super(key: key);

  @override
  _PerfilScreenState createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: ListView (
        children: [
          Padding (
            padding: EdgeInsets.only(top: 30),
            child: Text('Profile',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          Container (
            alignment: Alignment.center,
            width: 200,
            height: 200,
            child: Stack (
              alignment: Alignment.center,
              children: [

                Container (
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.circular(100),
                    color: lightBlockColor,
                  ),
                ),

                CircleAvatar(
                  backgroundColor: lightColor,
                  radius: 70,
                ),

              ],
            ),
          ),

          Row (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Nome',
                style: const TextStyle (
                    fontSize: 20,
                    color: mediumColor,
                    fontWeight: FontWeight.bold
                ),
              ),

              Text('  '),

              Text('Sobrenome',
                style: const TextStyle (
                    fontSize: 20,
                    color: mediumColor,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),

          Padding (
            padding: EdgeInsets.only(top: 20, right: 35, left: 35, bottom: 10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EditProfile()
                  ),
                );
              },

              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                backgroundColor: kSecondaryColor,
              ),
              child: Row (
                children: [
                  Container (
                    padding: EdgeInsets.only(left: 20),
                    child: Icon (
                      Icons.edit,
                    ),
                  ),
                  Container (
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft ,
                    child: Text ( 'Edit Profile',
                      style: const TextStyle (
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),



          Padding (
            padding: EdgeInsets.only(top: 20, right: 35, left: 35, bottom: 10),
            child: ElevatedButton(
              onPressed: () {

              },

              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                backgroundColor: kSecondaryColor,
              ),
              child: Row (
                children: [
                  Container (
                    padding: EdgeInsets.only(left: 20),
                    child: Icon (
                      Icons.exit_to_app,
                    ),
                  ),
                  Container (
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft ,
                    child: Text ( 'Log out',
                      style: const TextStyle (
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}