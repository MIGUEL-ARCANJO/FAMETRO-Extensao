import 'package:flutter/material.dart';

class ShortCutsModel {
  final String name;
  final List<Map<String, String>> atalhos;
  final Color color;

  const ShortCutsModel(this.name, this.atalhos, this.color);
}

class ShortCuts {
  final String title;
  final String content;
  final Map<String, String> atalhos;

  const ShortCuts(this.title, this.content, this.atalhos);
}
