import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  final String title;
  final String description;
  final bool isSelected;
  final VoidCallback onTap;

  const OptionCard({
    super.key,
    required this.title,
    required this.description,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: onTap, // Handle on tap
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.grey[100],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: isSelected ? Colors.blue : Colors.transparent,
              width: 2, // Border width
            ),
          ),
          child: ListTile(
            title: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black, // Title color changes when selected
              ),
            ),
            subtitle: Text(description),
          ),
        ),
      ),
    );
  }
}
