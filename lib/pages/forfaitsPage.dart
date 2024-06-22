import 'package:flutter/material.dart';

class ForfaitsPage extends StatelessWidget {
  const ForfaitsPage({super.key});


  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.call),
                  label: const Text("Forfaits Appel"),
                  iconAlignment: IconAlignment.start,
                  ),
                FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.public),
                  label: const Text("Forfaits Internet"),
                  iconAlignment: IconAlignment.start,
                  ),
              ],
            ),
            SizedBox(
              child: FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.join_full),
                label: const Text("Forfaits Mixte"),
                iconAlignment: IconAlignment.start,
                ),
            ),
          ],
        ),
    ));
  }
  
}