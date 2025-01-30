import 'package:firebase_auth/firebase_auth.dart';

class ApiEndpoints {

static String usersUid() {

var user=FirebaseAuth.instance.currentUser;
 return user!.uid;
}

  static String users(String uid) => 'users/$uid';
  static String products(String pid) => 'products/$pid';
  static String getProducts() => 'products';
    static String addToFavorites(String productId) => 'users/${usersUid()}/favorites/$productId';
      static String getFavorites() => 'users/${usersUid()}/favorites';
}
