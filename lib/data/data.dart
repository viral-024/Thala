import 'package:p1/model/categories_model.dart';

String apiKey = "6vjr6oWJqq7YzgNVPmWoAK73jSN1eYZdQiv9rVTB9JvkVILjtDhKZopi";

List<CategoriesModel> getCategories() {
  List<CategoriesModel> categories = []; // fixed list creation

  CategoriesModel categoriesModel = CategoriesModel();

  categoriesModel.imgURL = "https://images.pexels.com/photos/1194420/pexels-photo-1194420.jpeg?auto=compress&cs=tinysrgb&w=800";
  categoriesModel.categoriesName = "Street Art";
  categories.add(categoriesModel);

  categoriesModel = CategoriesModel();
  categoriesModel.imgURL = "https://images.pexels.com/photos/20523197/pexels-photo-20523197.jpeg?auto=compress&cs=tinysrgb&w=800";
  categoriesModel.categoriesName = "Wild Life";
  categories.add(categoriesModel);

  categoriesModel = CategoriesModel();
  categoriesModel.imgURL = "https://images.pexels.com/photos/1766838/pexels-photo-1766838.jpeg?auto=compress&cs=tinysrgb&w=800";
  categoriesModel.categoriesName = "Nature";
  categories.add(categoriesModel);

  categoriesModel = CategoriesModel();
  categoriesModel.imgURL = "https://images.pexels.com/photos/10403171/pexels-photo-10403171.jpeg?auto=compress&cs=tinysrgb&w=800";
  categoriesModel.categoriesName = "Bike";
  categories.add(categoriesModel);

  categoriesModel = CategoriesModel();
  categoriesModel.imgURL = "https://images.pexels.com/photos/1592384/pexels-photo-1592384.jpeg?auto=compress&cs=tinysrgb&w=800";
  categoriesModel.categoriesName = "Cars";
  categories.add(categoriesModel);

  categoriesModel = CategoriesModel();
  categoriesModel.imgURL = "https://images.pexels.com/photos/1234567/pexels-photo-1234567.jpeg?auto=compress&cs=tinysrgb&w=800";
  categoriesModel.categoriesName = "Motivation";
  categories.add(categoriesModel);

  categoriesModel = CategoriesModel();
  categoriesModel.imgURL = "https://images.pexels.com/photos/9751463/pexels-photo-9751463.jpeg?auto=compress&cs=tinysrgb&w=800";
  categoriesModel.categoriesName = "city";
  categories.add(categoriesModel);

  return categories;
}
