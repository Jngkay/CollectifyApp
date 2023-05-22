import 'package:flutter/material.dart';
import 'detailsPage.dart';
import 'models/plantmodel.dart';

class HomePage extends StatelessWidget {
  final List items = [
    Plant_Animal(
        kingdom: 'Plant Kingdom',
        name: 'Thallophyta',
        description:
            'Primitive and simple body structures. The plant body is thallus, they may be filamentous, colonial, branched or unbranched. include green algae, red algae and brown algae.',
        imagePath: 'assets/Bryophyta.jpg'),
    Plant_Animal(
        kingdom: 'Animal Kingdom',
        name: 'Arthropod',
        description:
            'Phylum of invertebrate animals (as insects, arachnids, and crustaceans) having a segmented body, jointed limbs, and a shell of chitin that is shed periodically.',
        imagePath: 'assets/arthropod2.jpg'),
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(item: items[index]),
                ),
              );
            },
            child: ListTile(
              title: Text(items[index].name),
            ),
          );
        },
      ),
    );
  }
}
