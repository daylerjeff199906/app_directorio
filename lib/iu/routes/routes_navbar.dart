// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:app_directorio/iu/pages/pages_navbar/home_page.dart';
// import 'package:catalogo_species/iu/paginas/pageNavBar/comunidpage.dart';
// import 'package:catalogo_species/iu/paginas/pageNavBar/especiepage.dart';

class RoutesN extends StatelessWidget {
  final int index;
  const RoutesN({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = const [
      Homepage(),
    ];
    return pages[index];
  }
}
