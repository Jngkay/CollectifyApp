import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:collectify_application/Dashboard.dart';

class DetailsPage extends StatelessWidget {
  final item;

  DetailsPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Column(
        children: [
          FutureBuilder<String>(
            future: _getImageUrl(item.imagePath),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Image.network(snapshot.data!);
              } else if (snapshot.hasError) {
                return Text('Error loading image');
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  item.kingdom,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  item.name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(item.description),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }

  Future<String> _getImageUrl(String imagePath) async {
    try {
      final ref =
          firebase_storage.FirebaseStorage.instance.ref().child(imagePath);
      return await ref.getDownloadURL();
    } catch (e) {
      print('Error getting image URL: $e');
      return '';
    }
  }
}
