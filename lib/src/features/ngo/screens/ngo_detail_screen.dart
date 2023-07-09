import 'package:flutter/material.dart';

import '../models/ngo_model.dart';

class NGODetailScreen extends StatelessWidget {
  const NGODetailScreen({
    super.key,
    required this.ngo,
  });

  final NGOModel ngo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ngo.name),
      ),
    );
  }
}
