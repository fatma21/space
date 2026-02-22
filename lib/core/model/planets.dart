import 'dart:convert';
import 'package:flutter/services.dart';

class Planet {
  final String name;
  final String image;
  final String model3d;
  final String title;
  final String about;
  final String distanceFromSun;
  final String lengthOfDay;
  final String orbitalPeriod;
  final String radius;
  final String mass;
  final String gravity;
  final String surfaceArea;

  Planet({
    required this.name,
    required this.image,
    required this.model3d,
    required this.title,
    required this.about,
    required this.distanceFromSun,
    required this.lengthOfDay,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea,
  });

  factory Planet.fromJson(Map<String, dynamic> json) {
    return Planet(
      name: json['Planet Name']?.toString() ?? '',
      title: json['Title']?.toString() ?? '',
      about: json['About']?.toString() ?? '',
      image: json['PNG Image']?.toString() ?? '',
      model3d: json['3D Model']?.toString() ?? '',
      distanceFromSun: json['Distance from Sun (km)']?.toString() ?? '',
      lengthOfDay: json['Length of Day (hours)']?.toString() ?? '',
      orbitalPeriod: json['Orbital Period (Earth years)']?.toString() ?? '',
      radius: json['Radius (km)']?.toString() ?? '',
      mass: json['Mass (kg)']?.toString() ?? '',
      gravity: json['Gravity (m/s²)']?.toString() ?? '',
      surfaceArea: json['Surface Area (km²)']?.toString() ?? '',
    );
  }


  static Future<List<Planet>> loadPlanetsFromJson() async {
    final String response =
    await rootBundle.loadString('assets/files/convertcsv.json');
    final List<dynamic> data = json.decode(response);
    return data.map((json) => Planet.fromJson(json)).toList();
  }
}