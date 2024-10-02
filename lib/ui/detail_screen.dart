import 'package:flutter/material.dart';
import 'package:project_api/model/users.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, this.user});

  final Users? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${user?.name}'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text('${user?.name}'),
            Text('${user?.username}'),
            Text('${user?.email}'),
            Text('${user?.phone}'),
            Text('${user?.website}'),
            Text('${user?.address?.street}'),
            Text('${user?.address?.suite}'),
            Text('${user?.address?.city}'),
            Text('${user?.address?.zipcode}'),
            Text('${user?.address?.geo?.lat}'),
            Text('${user?.address?.geo?.lng}'),
          ],
        ),
      ),
    );
  }
}
