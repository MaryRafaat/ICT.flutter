import 'package:flutter/material.dart';
import 'package:flutter_my_app/widgets/custom_text.dart';
import 'package:flutter_my_app/widgets/custom_card.dart';
import 'package:flutter_my_app/data/data_source/data_source.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var itemModel = DataSource.itemsList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: 8,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.9,

            //mainAxisExtent: 230 ,
            //mainAxisSpacing: 5,
            //crossAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return CustomCard(itemsModel: itemModel[index]);
          }),
    );
  }
}
