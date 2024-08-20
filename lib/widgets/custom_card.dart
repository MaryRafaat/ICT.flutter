import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_app/data/data_model/items_model.dart';
import 'package:flutter_my_app/widgets/custom_text.dart';

class CustomCard extends StatelessWidget {
  final ItemsModel? itemsModel;
  const CustomCard({
    super.key,
    this.itemsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: Colors.blueGrey, borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            '${itemsModel?.image}',
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Name: ${itemsModel?.name}',
                ),
                CustomText(
                  text: 'Price: ${itemsModel?.price}',
                ),
                Padding(
                    padding: const EdgeInsets.all(
                  8.0,
                )),
                CustomText(
                  text: 'Description: ${itemsModel?.description}',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
