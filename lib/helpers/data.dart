import 'package:kikinews/models/catgegory_model.dart';

List<CategoryModel> getcategory() {
  List<CategoryModel> category = new List<CategoryModel>();
  CategoryModel categoryModel = new CategoryModel();

  categoryModel = new CategoryModel();
  categoryModel.category = "business";
  categoryModel.imageurl =
      "https://images.unsplash.com/photo-1520607162513-77705c0f0d4a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.category = "entertainment";
  categoryModel.imageurl =
      "https://images.unsplash.com/photo-1499364615650-ec38552f4f34?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=966&q=80";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.category = "General";
  categoryModel.imageurl =
      "https://images.unsplash.com/photo-1562170142-04f38fb2827d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.category = "Health";
  categoryModel.imageurl =
      "https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.category = "Science";
  categoryModel.imageurl =
      "https://images.unsplash.com/photo-1534777410147-084a460870fc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.category = "Sports";
  categoryModel.imageurl =
      "https://images.unsplash.com/photo-1461896836934-ffe607ba8211?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.category = "Technology";
  categoryModel.imageurl =
      "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);

  return category;
}
