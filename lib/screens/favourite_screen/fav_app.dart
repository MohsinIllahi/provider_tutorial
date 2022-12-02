import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorials/provider/favorite_provider.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final words = nouns.take(50).toList();
    final provider = Provider.of<FavouriteItemProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Favourite Screen'),
      ),
      body: ListView.builder(
          itemCount: words.length,
          itemBuilder: (context, index) {
            final word = words[index];
            return ListTile(
              title: Text(word),
              trailing: IconButton(
                  onPressed: () {
                    //provider.toggleFavorite(word);
                  },
                  icon: Icon(Icons.favorite_border_outlined)),
            );
          }),
    );
  }
}
