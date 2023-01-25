
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pekin_shop_ui/pages/productview_page.dart';
import 'package:shimmer/shimmer.dart';

import '../model/product_model.dart';

class CategoryViewPage extends StatefulWidget {
  final Map? category;
  const CategoryViewPage({Key? key, this.category}) : super(key: key);

  @override
  State<CategoryViewPage> createState() => _CategoryViewPageState();
}

class _CategoryViewPageState extends State<CategoryViewPage> {

  List<Product> items = [];
  void parseData() {
    setState(() {
      items = widget.category!["products"];
    });
  }

  @override
  void initState() {
    parseData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category!["name"], style: TextStyle(color: Colors.black)),
        iconTheme: const IconThemeData(color: Colors.deepOrange),
        backgroundColor: Colors.white,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 2/2.7),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return itemOfProduct(items[index]);
        },
      )
    );
  }

  Widget itemOfProduct(Product product) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, CupertinoPageRoute(builder: (context) => ProductViewPage(product: product)));
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              const BoxShadow(color: Colors.grey, blurRadius: 5)
            ]
        ),
        child: Column(
          children: [
            Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
                child: CachedNetworkImage(
                  imageUrl: product.imgUrls!.first,
                  placeholder: (context, url) => Shimmer.fromColors(
                    baseColor: Colors.red,
                    highlightColor: Colors.yellow,
                    child: const Center(
                      child: Text(
                        'ABZAL SHOP',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
            ),
            Container(
              width: 180,
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name!,
                    style: const TextStyle(fontSize: 22, overflow: TextOverflow.ellipsis,),
                  ),
                  const SizedBox(height: 10,),
                  Text(product.price!, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
