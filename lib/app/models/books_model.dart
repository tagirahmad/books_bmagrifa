import 'package:firebase_database/firebase_database.dart';

class Books {
  late String fAQ;
  late String allProjects;
  late String bmagrifa;
  late List<Book> books;
  late String courses;
  late String email;
  late String islamMed;
  late OtherApps otherApps;
  late String termsOfUse;

  Books({
    required this.fAQ,
    required this.allProjects,
    required this.bmagrifa,
    required this.books,
    required this.courses,
    required this.email,
    required this.islamMed,
    required this.otherApps,
    required this.termsOfUse,
  });

  Books.fromJson(Map<String, dynamic> json) {
    fAQ = json['FAQ'];
    allProjects = json['allProjects'];
    bmagrifa = json['bmagrifa'];
    if (json['books'] != null) {
      books = <Book>[];
      json['books'].forEach((v) {
        books.add(Book.fromJson(v));
      });
    }
    courses = json['courses'];
    email = json['email'];
    islamMed = json['islamMed'];
    otherApps = (json['otherApps'] != null
        ? OtherApps.fromJson(json['otherApps'])
        : null)!;
    termsOfUse = json['termsOfUse'];
  }

  Books.fromSnapshot(DataSnapshot snapshot) {
    fAQ = snapshot.value['FAQ'];
    allProjects = snapshot.value['allProjects'];
    bmagrifa = snapshot.value['bmagrifa'];
    if (snapshot.value['books'] != null) {
      books = <Book>[];
      print("runtime type of ${snapshot.value['books'][0].runtimeType}");
      snapshot.value['books'].forEach((dynamic v) {
        books.add(Book.fromJson(Map<String, dynamic>.from(v)));
      });
    }
    courses = snapshot.value['courses'];
    email = snapshot.value['email'];
    islamMed = snapshot.value['islamMed'];
    otherApps = (snapshot.value['otherApps'] != null
        ? OtherApps.fromSnapshot(snapshot.value['otherApps'])
        : null)!;
    termsOfUse = snapshot.value['termsOfUse'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['FAQ'] = fAQ;
    data['allProjects'] = allProjects;
    data['bmagrifa'] = bmagrifa;
    if (books != null) {
      data['books'] = books.map((v) => v.toJson()).toList();
    }
    data['courses'] = courses;
    data['email'] = email;
    data['islamMed'] = islamMed;
    if (otherApps != null) {
      data['otherApps'] = otherApps.toJson();
    }
    data['termsOfUse'] = termsOfUse;
    return data;
  }
}

class Book {
  late String author;
  late List<String> categories;
  late String coverImage;
  late String description;
  late bool hidden;
  late bool isNew;
  late String title;
  late String url;
  late int version;

  Book({
    required this.author,
    required this.categories,
    required this.coverImage,
    required this.description,
    required this.hidden,
    required this.isNew,
    required this.title,
    required this.url,
    required this.version,
  });

  Book.fromJson(dynamic json) {
    author = json['author'];
    categories = json['categories'].cast<String>();
    coverImage = json['coverImage'];
    description = json['description'];
    hidden = json['hidden'];
    isNew = json['isNew'];
    title = json['title'];
    url = json['url'];
    version = json['version'];
  }

  Book.fromDynamic(Map<dynamic, dynamic> json) {
    author = json['author'];
    categories = json['categories'].cast<String>();
    coverImage = json['coverImage'];
    description = json['description'];
    hidden = json['hidden'];
    isNew = json['isNew'];
    title = json['title'];
    url = json['url'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['author'] = author;
    data['categories'] = categories;
    data['coverImage'] = coverImage;
    data['description'] = description;
    data['hidden'] = hidden;
    data['isNew'] = isNew;
    data['title'] = title;
    data['url'] = url;
    data['version'] = version;
    return data;
  }
}

class OtherApps {
  late String android;
  late String ios;

  OtherApps({required android, required ios});

  OtherApps.fromJson(Map<String, dynamic> json) {
    android = json['android'];
    ios = json['ios'];
  }

  OtherApps.fromSnapshot(Map<dynamic, dynamic> json) {
    android = json['android'];
    ios = json['ios'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['android'] = android;
    data['ios'] = ios;
    return data;
  }
}
