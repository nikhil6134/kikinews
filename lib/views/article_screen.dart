import 'package:flutter/material.dart';
import 'package:kikinews/helpers/data.dart';
import 'package:kikinews/helpers/news.dart';
import 'package:kikinews/models/article_model.dart';
import 'package:kikinews/models/catgegory_model.dart';
import 'package:kikinews/widgets/category_card.dart';
import 'package:kikinews/widgets/blogtile.dart';

class ArticleView extends StatefulWidget {
  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  List<CategoryModel> categories = new List<CategoryModel>();
  List<ArticleModel> articles = new List<ArticleModel>();
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    categories = getcategory();
    getnews();
    print(categories);
  }

  getnews() async {
    News newsclass = News();
    await newsclass.getNews();
    articles = newsclass.news;
    print(articles.length);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: new AssetImage("assets/images/niksa.gif"),
              filterQuality: FilterQuality.high,
              alignment: Alignment.center,
              height: 200,
              width: 200,
            ),

            // Text(
            // "KiKi",
            //style: TextStyle(fontSize: 28),
            //),
            //Text(
            //"News",
            //style: TextStyle(color: Colors.blueAccent),
            // )
          ],
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: isLoading
          ? Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 25),
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      height: 200,
                      //for categories
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return CategoryCard(
                            category: categories[index].category,
                            imageurl: categories[index].imageurl,
                          );
                        },
                        itemCount: categories.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                      ),
                    ),

                    //for blogs
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return BlogTile(
                            imageurl: articles[index].urltoImage,
                            title: articles[index].title,
                            desc: articles[index].description,
                            url: articles[index].url,
                          );
                        },
                        itemCount: articles.length,
                        scrollDirection: Axis.vertical,
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
