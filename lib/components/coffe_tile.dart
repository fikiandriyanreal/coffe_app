import 'package:flutter/material.dart';
import '../models/coffe.dart';

// ignore: must_be_immutable
class CoffeTile extends StatelessWidget {
  final Coffe coffe;
  void Function()? onPressed;
  final Widget icon;
  CoffeTile({
    super.key,
    required this.coffe,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(coffe.name),
        subtitle: Text(coffe.price),
        leading: Image.asset(coffe.imagePath),
        trailing: IconButton(icon: icon, onPressed: onPressed),
      ),
    );
  }
}
