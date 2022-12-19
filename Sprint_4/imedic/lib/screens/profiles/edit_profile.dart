import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class EditProfile extends StatelessWidget {

  Widget inputField (String hint) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
      child: SizedBox(
        height: 45,
        child: TextField (
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            border:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: lightBlockColor,
            hintText: hint,
          ),
        ),
      ),
    );
  }

  Widget mainButtom (String title) {
    return Padding(
      padding: const EdgeInsets.only(right: 60, left: 60, bottom: 10),
      child: ElevatedButton(
        onPressed: () {

        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric( vertical: 15),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          backgroundColor: kSecondaryColor,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: kPrimaryColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: kBackgroundColor,
        shadowColor: Colors.transparent,
      ),
      body: ListView (
        children: [
          Container (
            padding: EdgeInsets.only(bottom: 10),
            alignment: Alignment.center,
            width: 200,
            height: 210,
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

                Container (
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {

                    },

                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal:5, vertical:10),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      backgroundColor: kSecondaryColor,
                    ),
                    child: Icon (
                      Icons.add_a_photo,
                      color: kBackgroundColor,
                    ),
                  ),
                ),

              ],
            ),
          ),

          inputField('Nome'),
          const SizedBox(height: 8,),
          inputField('Sobrenome'),
          const SizedBox(height: 8,),
          inputField('E-mail'),
          const SizedBox(height: 8,),
          inputField('Senha'),
          const SizedBox(height: 8,),
          inputField('CEP'),
          const SizedBox(height: 8,),
          inputField('Telefone'),
          const SizedBox(height: 30,),
          mainButtom('Edit Profile'),
        ],
      ),
    );
  }
}