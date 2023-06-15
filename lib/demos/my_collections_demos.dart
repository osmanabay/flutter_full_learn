import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      padding: PaddingUtility().paddingHorizontal,
      itemBuilder: (context, index) {
        return _CategoryCard(model: _items[index]);
      },
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingButtom,
      child: Padding(
        padding: PaddingUtility().paddingGeneral,
        child: Column(
          children: [
            Image.asset(
              _model.imagePath,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: PaddingUtility().paddingTop,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_model.title),
                  Text('${_model.price} eth'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}

class CollectionItems {
  late final List<CollectionModel> items;
  CollectionItems() {
    items = [
      CollectionModel(imagePath: 'assets/png/image_collection.png', title: 'Abstract Aart', price: 3.4),
      CollectionModel(imagePath: 'assets/png/image_collection.png', title: 'Abstract Aart2', price: 3.4),
      CollectionModel(imagePath: 'assets/png/image_collection.png', title: 'Abstract Aart3', price: 3.4),
      CollectionModel(imagePath: 'assets/png/image_collection.png', title: 'Abstract Aart4', price: 3.4),
    ];
  }
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingButtom = const EdgeInsets.only(top: 10);
  final paddingGeneral = const EdgeInsets.all(20);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}
