import 'package:flutter/material.dart';
// import 'package:catalogo_species/iu/Widgets/circleAvatar/circleAvatar.dart';
// import 'package:catalogo_species/iu/Widgets/cards/home_cards/home_card_comunidades.dart';
// import '../../Widgets/drawer/Drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // ignore: unused_field
  int _counter = 0;
  // ignore: unused_field
  int _selectedIndex = 0;
  // ignore: unused_field
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
  ];
  // ignore: unused_field
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // ignore: unused_field
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // ignore: unused_field
  int _currentindex = 0;
  // ignore: unused_field
  late Widget _currentWidget = Homepage();
  // ignore: unused_field
  final List<Widget> _children = [
    Homepage(),
    // Especiepage(),
    // Comunidpage(),
  ];
  // ignore: unused_field
  void onTappedBar(int index) {
    setState(() {
      _currentindex = index;
      _currentWidget = _children[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Amazonia'),
      // ),
      // drawer: const drawer(),
      body: _currentWidget,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Especies',
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Comunidades',
            backgroundColor: Colors.deepPurple,
          ),
        ],
        currentIndex: _currentindex,
        selectedItemColor: Colors.amber[800],
        onTap: onTappedBar,
      ),
    );
  }
}

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Amazonia'),
//         ),
//         drawer: const drawer(),
//         body: ListView(
//           children: <Widget>[
//             const SizedBox(
//               height: 20,
//             ),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Text(
//                 'categorias',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontFamily: 'Roboto',
//                   fontWeight: FontWeight.w500,
//                   letterSpacing: 0.15,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   categoriacircleAvatar(context, 'assets/especie.png', 'Aves'),
//                   categoriacircleAvatar(
//                       context, 'assets/mamifero.png', 'Mamiferos'),
//                   categoriacircleAvatar(
//                       context, 'assets/reptil.png', 'Reptiles'),
//                   categoriacircleAvatar(
//                       context, 'assets/anfibio.png', 'Anfibios')
//                 ],
//               ),
//             ),
//             ListTile(
//               title: const Text(
//                 'Comunidades indígenas',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontFamily: 'Roboto',
//                   fontWeight: FontWeight.w500,
//                   letterSpacing: 0.15,
//                 ),
//               ),
//               contentPadding: const EdgeInsets.symmetric(horizontal: 16),
//               trailing: IconButton(
//                   onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
//             ),
//             Container(
//               width: 350,
//               height: 228,
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 16,
//               ),
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: <Widget>[
//                   comunidadesCard(
//                       context, 'assets/especie.png', 'chivo el que lo lee'),
//                   comunidadesCard(
//                       context, 'assets/especie.png', 'chivo el que lo lee'),
//                   comunidadesCard(
//                       context, 'assets/especie.png', 'chivo el que lo lee')
//                 ],
//               ),
//             ),
//             ListTile(
//               title: const Text(
//                 'Especies recomendadas',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontFamily: 'Roboto',
//                   fontWeight: FontWeight.w500,
//                   letterSpacing: 0.15,
//                 ),
//               ),
//               contentPadding: const EdgeInsets.symmetric(horizontal: 16),
//               trailing: IconButton(
//                   onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
//             ),
//           ],
//         ));
//   }
// }
