import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: ListView (
        padding: EdgeInsets.only(top: 50),
        children: [
          Padding (
            padding:EdgeInsets.only(left:50, right:50),

            child: Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text ('Consultas',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8,),

                Container (
                  width: 300,
                  height: 80,
                  decoration: const BoxDecoration (
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: lightBlockColor,
                  ),

                  child: Row (

                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color:kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding (
            padding:EdgeInsets.only(left:50, right:50),

            child: Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text ('Retorno',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}