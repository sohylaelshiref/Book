import 'bank_account.dart';
import 'book.dart';
import 'serializable.dart';
import 'shape.dart';

void main() {
  Novel novel = Novel('the Beauty', 'Taha Hussen', 150, gener: 'enterteatment');
  novel.displayinfo();

  Circle circle = Circle(radius: 0.5);
  Rectangle rectangle = Rectangle(width: 4.0, height: 6.0);
  print('Circle area: ${calculateArea(circle)}');
  print('Rectangle area: ${calculateArea(rectangle)}');

  User user1 = User(userName: 'Ahmed Mohamed', age: 30);
  var userJson = user1.toJson();
  print('User Json: $userJson');

  Product product = Product(name: 'Bag', price: 200);
  var productJson = product.toJson();
  print('Product Json: $productJson');

  try {
    BankAccount myAccount = BankAccount(accountNumber: 'B593A', balance: 1000);
    myAccount.deposit(500);
    myAccount.withdraw(300);
    print('New balance: ${myAccount.balance}');
  } catch (e) {
    print('Error: $e');
  }
}
