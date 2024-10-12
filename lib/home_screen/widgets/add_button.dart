import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[800],
      ),
      onPressed: (){},
      child: const Icon(Icons.add),
    );
  }
}
