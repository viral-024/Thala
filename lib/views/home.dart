import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:p1/views/image_view.dart';
import 'package:p1/widgets/widget.dart';
import '../data/data.dart';
import '../model/categories_model.dart';
import 'package:http/http.dart' as http;
import '../model/wallpaper_model.dart';
import 'search.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<CategoriesModel> categories = [];
  List<WallpaperModel> wallpapers = [];

  TextEditingController searchController = TextEditingController();

  getTrendingWallpapers() async {
    var response = await http.get(
      Uri.parse("https://api.pexels.com/v1/curated?per_page=30&page=1"),
      headers: {"Authorization": apiKey},
    );

    // print(response.body.toString());

    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData["photos"].forEach((element) {
      wallpapers.add(WallpaperModel.fromMap(element));
    });

    setState(() {
    });

  }

  @override
  void initState() {
    getTrendingWallpapers();
     categories = getCategories();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: brandName(),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color(0xfff5f8fd),
                borderRadius: BorderRadius.circular(30)
              ),
              padding: EdgeInsets.symmetric(horizontal: 24),
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Row(children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: "search Wallpaper",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Search(
                      searchQuery: searchController.text,
                    )));
                  },
                  child: Container(
                      child: Icon(Icons.search)),
                ),
              ],),
            ),
        
            SizedBox(height: 16,),
            Container(
              height: 80,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 24),
                itemCount: categories.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return CategoriesTile(
                    imgUrl: categories[index].imgURL ?? '',
                    title: categories[index].categoriesName ?? '',
                  );
                }),
            ),
            SizedBox(height: 16,),
            wallpapersList(wallpapers: wallpapers,context: context),
        ],),),
      ),
    );
  }
}

extension on Future<http.Response> {
  get body => null;
}


class CategoriesTile  extends StatelessWidget {

  final String imgUrl ;
  final String title ;
  CategoriesTile({required this.title, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Search(
          searchQuery: title,
        )));
      },
      child: Container(
        margin: EdgeInsets.only(right: 4),
        child: Stack(children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(imgUrl,height: 50,width: 100,fit: BoxFit.cover)),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(title, style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
            ),
          ],),
      ),
    );
  }
}