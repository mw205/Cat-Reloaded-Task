import 'package:flutter/material.dart';

Map<String, dynamic> catData = {
  'name': "Fiona",
  "species": "Feline | European",
  "photo":
      "https://hips.hearstapps.com/hmg-prod/images/beautiful-smooth-haired-red-cat-lies-on-the-sofa-royalty-free-image-1678488026.jpg?crop=1xw:0.84415xh;center,top&resize=1200:*",
  'signs': "Light brown with white patches",
  "data_count": 3,
  'data': [
    {"Gender": "Female"},
    {"Size": "Medium"},
    {"Weight": "6kg"},
  ],
  "dates": [
    {
      "name": "BirthDay",
      "date_time": "3 Nov 2022",
      "icon": const Icon(
        Icons.cake_rounded,
        color: Colors.blue,
      ),
      "age": "1  y.o"
    },
    {
      "name": "AdoptionDay",
      "date_time": '14 Feb 2023',
      "icon": const Icon(
        Icons.home,
        color: Colors.blue,
      ),
      "age": "",
    },
  ],
  "caretakers": {
    "photo":
        "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww",
    "name": "bellingham",
    "email": "mw99746@gamil.com",
  }
};
