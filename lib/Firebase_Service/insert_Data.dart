// ignore: file_names

import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

void insertFoodDay(String date, String mael1, String mael2, String mael3,
    String mael4, String mael5) {
  CollectionReference projectData = db.collection('FoodPlan');

  Map<String, dynamic> newFoodPlan = {
    'Date': date,
    'BreakFast': mael1,
    'Collation 1': mael2,
    'Meal': mael3,
    'Collation 2': mael4,
    'Dinner': mael5
  };

  projectData
      .add(newFoodPlan)
      .then((value) => {
            print('Plan ingresado correctamente: $value'),
          })
      .catchError((error) {
    print('Plan ingresado incorrectamente: $error');
  });
}

void insertUser(
    String name, String last, String street, int year, int height, int weight) {
  CollectionReference projectData = db.collection('User');

  Map<String, dynamic> newUser = {
    'Name': name,
    'Last Name': last,
    'Street Address': street,
    'Year Old': year,
    'Height': height,
    'Weight': weight,
  };

  projectData
      .add(newUser)
      .then((value) => {
            print('Plan ingresado correctamente: $value'),
          })
      .catchError((error) {
    print('Plan ingresado incorrectamente: $error');
  });
}
