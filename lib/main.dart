import 'package:flutter/material.dart';
import 'package:groceries_provider/provider/provider_func.dart';
import 'package:provider/provider.dart';

import 'home.dart';

void main() {
  runApp(const Demo());
}
class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>Providerfunction(),
      child: MaterialApp(debugShowCheckedModeBanner: false,
      home:const Groceries()),
    );
  }
}

