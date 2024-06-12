abstract class Serializable {
  Map<String, dynamic> toJson();
}

class User implements Serializable {
  String userName;
  int age;
  User({required this.userName, required this.age});

  @override
  Map<String, dynamic> toJson() {
    return {'username': userName, 'age': age};
  }
}

class Product implements Serializable {
  String name;
  double price;

  Product({required this.name, required this.price});

  @override
  Map<String, dynamic> toJson() {
    return {'name': name, 'price': price};
  }
}