import 'package:flutter/material.dart';
import 'package:groceries_provider/provider/provider_func.dart';

import 'favorites.dart';
import 'package:provider/provider.dart';
class Groceries extends StatefulWidget {
  const Groceries({Key? key}) : super(key: key);

  @override
  State<Groceries> createState() => _GroceriesState();
}

class _GroceriesState extends State<Groceries> {
  @override
  Widget build(BuildContext context) {
    bool checkboxvalue = false;
    final p=Provider.of<Providerfunction>(context);
    List words = [
      'time',
      'year',
      'people',
      'way',
      'day',
      'man',
      'thing',
      'woman',
      'life',
      'child',
      'world',
      'school'
    ];
    return Scaffold(
        appBar: AppBar(
        title: Center(child: Text("Groceries ")),),
      body: ListView.builder(
          itemCount: words.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${words[index]}"),
                    Checkbox(
                        value:p.symbol(words[index]),
                        onChanged: (bool? value) {
                           p.toggleFavorite(words[index]);



                        }),
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Favorites()));
        },
        label: Text("Favorites"),
      ),



    );
  }
}







