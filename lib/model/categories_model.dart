class CategoriesModel {
  String? imgURL;
  String? categoriesName;

  // Default empty constructor
  CategoriesModel();

  // Optional named constructor for quick creation
  CategoriesModel.withData(this.imgURL, this.categoriesName);
}
