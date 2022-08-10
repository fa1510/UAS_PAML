import 'package:flutter/cupertino.dart';

var data = [
  {
    "name": "Aero Street",
    "price": 150.000,
    "fav": false,
    "rating": 4.5,
    "image": "https://cf.shopee.co.id/file/ea3b10fe0f5f360a1823bd799da95687"
  },
  {
    "name": "Aloof",
    "price": 200.000,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://images.tokopedia.net/img/cache/900/VqbcmM/2021/10/25/2e6e8e61-e712-4292-9b0a-fc6e71bad20f.jpg"
  },
  {
    "name": "League",
    "price": 299.000,
    "fav": false,
    "rating": 4.5,
    "image": "https://cf.shopee.co.id/file/9b264b782749ed2a895dc7ddd79d45d2"
  },
  {
    "name": "Pierro",
    "price": 350.000,
    "fav": false,
    "rating": 3.5,
    "image":
        "https://lzd-img-global.slatic.net/g/p/6f41cdfed64fe7ce2a5143fd38d35d21.jpg_720x720q80.jpg_.webp"
  },
  {
    "name": "Tomkins",
    "price": 255.000,
    "fav": false,
    "rating": 4.5,
    "image": "https://www.tomkins.id/wp-content/uploads/2022/01/Soho-Beta-7.jpg"
  },
  {
    "name": "Ventela",
    "price": 314.000,
    "fav": false,
    "rating": 4.0,
    "image":
        "https://sg-test-11.slatic.net/p/1c1ed255ffd1370f471d93b47bedc47d.jpg"
  },
  {
    "name": "Geoff Max",
    "price": 205.000,
    "fav": false,
    "rating": 4.0,
    "image":
        "https://images.tokopedia.net/img/cache/900/product-1/2018/12/14/3276827/3276827_4da6cb96-a0b5-4698-b375-b517828daf98_600_600.jpg"
  },
  {
    "name": "Kodachi",
    "price": 100.000,
    "fav": false,
    "rating": 4.9,
    "image":
        "https://www.sepatukodachi.com/wp-content/uploads/2018/03/sepatu-capung-Kodachi-8115-Putih-ykraya.com-1-1024x1024.jpg"
  }
];

class ShopItemModel {
  String name;
  double price;
  bool fav;
  double rating;
  String image;
  int id;
  int? shopId;

  ShopItemModel(
      {this.shopId,
      required this.id,
      required this.fav,
      required this.rating,
      required this.price,
      required this.image,
      required this.name});

  factory ShopItemModel.fromJson(Map<String, dynamic> json) {
    return ShopItemModel(
      id: json['id'],
      fav: json['fav'] == 1,
      rating: json['rating'],
      price: json['price'],
      image: json['image'],
      name: json['name'],
      shopId: json['shop_id'] ?? 0,
    );
  }
}
