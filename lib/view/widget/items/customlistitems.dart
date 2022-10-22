import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/data/model/itemsmodel.dart';
import 'package:ecommercecourse/linkapi.dart';
import 'package:flutter/material.dart';

class CustomListItems extends StatelessWidget {
  final ProductModel product;

  const CustomListItems({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CachedNetworkImage(
                    imageUrl: product.photo!,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(height: 10),
                  Text(product.name!, style: const TextStyle(color: AppColor.black, fontSize: 16, fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("3.5 ", textAlign: TextAlign.center),
                      const SizedBox(width: 5),
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 15,
                        child: Row(
                          children:List.generate(5, (index) => const Icon(Icons.star, size: 15,color: Colors.yellow,))
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${product.price} \$",
                          style: const TextStyle(color: AppColor.primaryColor, fontSize: 16, fontWeight: FontWeight.bold, fontFamily: "sans")),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite, color: AppColor.primaryColor,))
                    ],
                  )
                ]),
          ),
        ));
  }
}
