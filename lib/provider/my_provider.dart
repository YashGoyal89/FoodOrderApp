import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodapp/modles/cart_modle.dart';
import 'package:foodapp/modles/categories_modle.dart';
import 'package:foodapp/modles/food_categories_modle.dart';
import 'package:foodapp/modles/food_modle.dart';

class MyProvider extends ChangeNotifier {
  List<CategoriesModle> burgerList = [];
  late CategoriesModle burgerModle;
  Future<void> getBurgerCategory() async {
    List<CategoriesModle> newBurgerList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categories')
        .doc('eQRX33bfHpEwoE6lgOkp')
        .collection('Burger')
        .get();
    querySnapshot.docs.forEach((element) {
      CategoriesModle burgerModle = CategoriesModle(
        image: element.get('image'),
        name: element.get('name'),
        list: [],
      );
      newBurgerList.add(burgerModle);
    });
    burgerList = newBurgerList;
    notifyListeners();
  }

  get throwBurgerList {
    return burgerList;
  }

  /////////////////// 2nd category ////////////////
  List<CategoriesModle> recipeList = [];
  late CategoriesModle recipeModle;
  Future<void> getRecipeCategory() async {
    List<CategoriesModle> newRecipeList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categories')
        .doc('eQRX33bfHpEwoE6lgOkp')
        .collection('Recipe')
        .get();
    querySnapshot.docs.forEach((element) {
      CategoriesModle recipeModle = CategoriesModle(
        image: element.get('image'),
        name: element.get('name'),
        list: [],
      );
      newRecipeList.add(recipeModle);
    });
    recipeList = newRecipeList;
    notifyListeners();
  }

  get throwRecipeList {
    return recipeList;
  }

  /////////////// 3nd Category///////////////////////

  List<CategoriesModle> pizzaList = [];
  late CategoriesModle pizzaModle;
  Future<void> getPizzaCategory() async {
    List<CategoriesModle> newPizzaList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categories')
        .doc('eQRX33bfHpEwoE6lgOkp')
        .collection('Pizza')
        .get();
    querySnapshot.docs.forEach((element) {
      CategoriesModle pizzaModle = CategoriesModle(
        image: element.get('image'),
        name: element.get('name'),
        list: [],
      );
      newPizzaList.add(pizzaModle);
    });
    pizzaList = newPizzaList;
    notifyListeners();
  }

  get throwPizzaList {
    return pizzaList;
  }

/////////////////4th category /////////////

  List<CategoriesModle> drinkList = [];
  late CategoriesModle drinkModle;
  Future<void> getDrinkCategory() async {
    List<CategoriesModle> newDrinkList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categories')
        .doc('eQRX33bfHpEwoE6lgOkp')
        .collection('Drink')
        .get();
    querySnapshot.docs.forEach((element) {
      CategoriesModle drinkModle = CategoriesModle(
        image: element.get('image'),
        name: element.get('name'),
        list: [],
      );
      newDrinkList.add(drinkModle);
    });
    drinkList = newDrinkList;
    notifyListeners();
  }

  get throwDrinkList {
    return drinkList;
  }

  /////////////////////  Single Food Item     //////////////////////////

  List<FoodModle> foodModleList = [];
  late FoodModle foodModle;
  Future<void> getFoodList() async {
    List<FoodModle> newSingleFoodList = [];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('Foods').get();
    querySnapshot.docs.forEach(
      (element) {
        foodModle = FoodModle(
            image: element.get('image'),
            name: element.get('name'),
            price: element.get('price'),
            quantity: element.get('quantity'));
        newSingleFoodList.add(foodModle);
      },
    );

    foodModleList = newSingleFoodList;
    notifyListeners();
  }

  get throwFoodModleList {
    return foodModleList;
  }

  ///////////////burger categories list//////////
  List<FoodCategoriesModle> burgerCategoriesList = [];
  late FoodCategoriesModle burgerCategoriesModle;
  Future<void> getBurgerCategoriesList() async {
    List<FoodCategoriesModle> newBurgerCategoriesList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('foodcategories')
        .doc('qJJ3cEdoChB3n3oZ2UMY')
        .collection('burger')
        .get();
    querySnapshot.docs.forEach((element) {
      burgerCategoriesModle = FoodCategoriesModle(
        image: element.get('image'),
        name: element.get('name'),
        price: element.get('price'),
      );
      newBurgerCategoriesList.add(burgerCategoriesModle);
      burgerCategoriesList = newBurgerCategoriesList;
    });
  }

  get throwBurgerCategoriesList {
    return burgerCategoriesList;
  }

  ///////////////Recipe categories list//////////
  List<FoodCategoriesModle> recipeCategoriesList = [];
  late FoodCategoriesModle recipeCategoriesModle;
  Future<void> getrecipeCategoriesList() async {
    List<FoodCategoriesModle> newrecipeCategoriesList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('foodcategories')
        .doc('qJJ3cEdoChB3n3oZ2UMY')
        .collection('recipe')
        .get();
    querySnapshot.docs.forEach((element) {
      recipeCategoriesModle = FoodCategoriesModle(
        image: element.get('image'),
        name: element.get('name'),
        price: element.get('price'),
      );
      newrecipeCategoriesList.add(recipeCategoriesModle);
      recipeCategoriesList = newrecipeCategoriesList;
    });
  }

  get throwRecipeCategoriesList {
    return recipeCategoriesList;
  }

  ///////////////Pizza categories list//////////
  List<FoodCategoriesModle> pizzaCategoriesList = [];
  late FoodCategoriesModle pizzaCategoriesModle;
  Future<void> getPizzaCategoriesList() async {
    List<FoodCategoriesModle> newPizzaCategoriesList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('foodcategories')
        .doc('qJJ3cEdoChB3n3oZ2UMY')
        .collection('Pizza')
        .get();
    querySnapshot.docs.forEach((element) {
      pizzaCategoriesModle = FoodCategoriesModle(
        image: element.get('image'),
        name: element.get('name'),
        price: element.get('price'),
      );
      newPizzaCategoriesList.add(pizzaCategoriesModle);
      pizzaCategoriesList = newPizzaCategoriesList;
    });
  }

  get throwPizzaCategoriesList {
    return pizzaCategoriesList;
  }

  ///////////////Drink categories list//////////
  List<FoodCategoriesModle> drinkCategoriesList = [];
  late FoodCategoriesModle drinkCategoriesModle;
  Future<void> getDrinkCategoriesList() async {
    List<FoodCategoriesModle> newDrinkCategoriesList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('foodcategories')
        .doc('qJJ3cEdoChB3n3oZ2UMY')
        .collection('drink')
        .get();
    querySnapshot.docs.forEach((element) {
      drinkCategoriesModle = FoodCategoriesModle(
        image: element.get('image'),
        name: element.get('name'),
        price: element.get('price'),
      );
      newDrinkCategoriesList.add(drinkCategoriesModle);
      drinkCategoriesList = newDrinkCategoriesList;
    });
  }

  get throwDrinkCategoriesList {
    return drinkCategoriesList;
  }

/////////////add to cart ////////////
  List<CartModle> cartList = [];
  List<CartModle> newCartList = [];
  late CartModle cartModle;
  void addToCart({
    required String image,
    required String name,
    required int price,
    required int quantity,
  }) {
    cartModle = CartModle(
      image: image,
      name: name,
      price: price,
      quantity: quantity,
    );
    newCartList.add(cartModle);
    cartList = newCartList;
  }

  get throwCartList {
    return cartList;
  }

  int totalprice() {
    int total = 0;
    cartList.forEach((element) {
      total += element.price * element.quantity;
    });
    return total;
  }

  late int deleteIndex;
  void getDeleteIndex(int index) {
    deleteIndex = index;
  }

  void delete() {
    cartList.removeAt(deleteIndex);
    notifyListeners();
  }
}
