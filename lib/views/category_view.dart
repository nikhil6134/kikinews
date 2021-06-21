import 'package:flutter/material.dart';
import 'package:kikinews/helpers/news.dart';
import 'package:kikinews/models/article_model.dart';
import 'package:kikinews/widgets/blogtile.dart';

class Categoryview extends StatefulWidget {
  final String category;

  Categoryview({this.category});
  @override
  _CategoryviewState createState() => _CategoryviewState();
}

class _CategoryviewState extends State<Categoryview> {
  List<ArticleModel> articles = new List<ArticleModel>();
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getCategorynews();
  }

  getCategorynews() async {
    CategorynewsClass categorynewsClass = CategorynewsClass();
    await categorynewsClass.getCategoryNews(widget.category);
    articles = categorynewsClass.news;
    print(articles.length);
    setState(() {
      _isLoading = false;
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
            ],
          ),
          actions: <Widget>[
            Opacity(
                opacity: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.save),
                ))
          ],
          elevation: 0.0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
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
        ));
  }
}
