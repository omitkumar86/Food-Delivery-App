class CategoryFood {
  String? foodName;
  String? image;

  CategoryFood(this.foodName, this.image);

  static List<CategoryFood> generatedCategoryFoodList() {
    return [
      CategoryFood("Ramen", "images/bg.png"),
    ];
  }
}
