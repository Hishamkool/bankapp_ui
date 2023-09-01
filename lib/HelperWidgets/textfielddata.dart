import 'package:flutter/material.dart';

class TextFieldData extends StatefulWidget {
  @override
  State<TextFieldData> createState() => _TextFieldDataState();
}

class _TextFieldDataState extends State<TextFieldData> {
  List editProfileTitles = [
    'Your Name',
    'User Name',
    'Email',
    'Password',
    'Date of Birth',
  ];

  List editProfileHintText = [
    'Charlene Reed',
    'Charlene Reed',
    'charelenereed@gmail.com',
    '*********',
    '29/11/1998',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: editProfileTitles.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(editProfileTitles[index]),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: editProfileHintText[index],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              )
            ],
          ),
        );
      },
    );
  }
}
