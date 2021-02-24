import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailsScreen'),
      ),
      body: const Center(
        child: Text('DetailsScreen content'),
      ),
    );
  }
}
