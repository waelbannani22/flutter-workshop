import 'package:flutter/material.dart';

import 'product_info.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<GameData> _games = [];

  final String _description =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
      "sed do eiusmod tempor incididunt ut "
      "labore et dolore magna aliqua. Ut enim ad minim veniam, "
      "quis nostrud exercitation ullamco laboris nisi ut "
      "aliquip ex ea commodo consequat. Duis aute irure dolor "
      "in reprehenderit in voluptate velit esse cillum dolore "
      "eu fugiat nulla pariatur. Excepteur sint occaecat "
      "cupidatat non proident, sunt in culpa qui officia ";

  @override
  void initState() {
    _games.add(GameData(
        title: "Devil May Cry 5",
        image: "assets/images/dmc5.jpg",
        description: _description,
        price: 200,
        quantity: 3000));
    _games.add(GameData(
        title: "Resident Evil VIII",
        image: "assets/images/re8.jpg",
        description: _description,
        price: 200,
        quantity: 3000));
    _games.add(GameData(
        title: "Need For Speed Heat",
        image: "assets/images/nfs.jpg",
        description: _description,
        price: 100,
        quantity: 3000));
    _games.add(GameData(
        title: "Red Dead Redemption II",
        image: "assets/images/rdr2.jpg",
        description: _description,
        price: 150,
        quantity: 3000));
    _games.add(GameData(
        title: "FIFA 22",
        image: "assets/images/fifa.jpg",
        description: _description,
        price: 100,
        quantity: 3000));
    _games.add(GameData(
        title: "Minecraft",
        image: "assets/images/minecraft.jpg",
        description: _description,
        price: 200,
        quantity: 3000));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("G-Store ESPRIT"),
        ),
        body: ListView.builder(
          itemCount: _games.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductInfo(
                _games[index].image,
                _games[index].title,
                _games[index].description,
                _games[index].price,
                _games[index].quantity);
          },
        ));
  }
}

class GameData {
  final String title;
  final String image;
  final String description;
  final int price;
  final int quantity;
  GameData({
    required this.title,
    required this.image,
    required this.description,
    required this.price,
    required this.quantity,
  });

  @override
  String toString() {
    return 'GameData{title: $title, image: $image, description: $description, price: $price, quantity: $quantity}';
  }
}
