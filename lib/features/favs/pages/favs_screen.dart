import 'package:flutter/material.dart';
import 'package:nectar_app/components/main_button.dart';
import 'package:nectar_app/features/favs/models/favs_model.dart';
import 'package:nectar_app/features/favs/widgets/favs_list.dart';

class FavsScreen extends StatelessWidget {
  const FavsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Favorites',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            Divider(),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: FavsList(items: favouritesItems),
            ),
            Divider(),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: MainButton(
                text: 'Add All to Cart',
                onPressed: () {
                  // Handle button press
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
