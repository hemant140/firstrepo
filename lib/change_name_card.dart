// ignore_for_file: prefer_const_constructors

import 'package:awsome_app/Bgimage.dart';
import 'package:flutter/material.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key? key,
    required this.myText,
    required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BgImage(),
        SizedBox(
          height: 20,
        ),
        Text(
          myText,
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: _nameController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Something here',
                labelText: "NAME"
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Password here',
                labelText: "Password"
            ),
          ),
        )
      ],
    );
  }
}
