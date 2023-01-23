import 'package:flutter/material.dart';
import 'package:groceries_provider/provider/provider_func.dart';
import 'package:provider/provider.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final p = Provider.of<Providerfunction>(context);
    final mywords = p.words;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Favourites")),
      ),
      body: ListView.builder(
          itemCount: mywords.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${mywords[index]}"),
                    Checkbox(
                        value: p.symbol(mywords[index]),
                        onChanged: (bool? value) {
                          p.toggleFavorite(mywords[index]);
                        }),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
