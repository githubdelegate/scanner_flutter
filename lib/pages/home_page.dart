import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '/components/zyz_image_text_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('首页')),
        body: Column(
          children: [
            SearchBar(
              text: "搜索",
              onPressed: () {
                print("点击了搜索");
              },
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ImageTextButton(
                  buttonText: "按钮1",
                  imageUrl: "images/img2txt.png",
                  imageSize: 40.0,
                  onPressed: () {
                    print("点击了按钮1");
                  },
                ),
                ImageTextButton(
                  buttonText: "按钮2",
                  imageUrl: "images/img2txt.png",
                  imageSize: 40.0,
                  onPressed: () {
                    print("点击了按钮2");
                  },
                ),
                ImageTextButton(
                  buttonText: "按钮3",
                  imageUrl: "images/img2txt.png",
                  imageSize: 40.0,
                  onPressed: () {
                    print("点击了按钮3");
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ImageTextButton(
                  buttonText: "按钮4",
                  imageUrl: "images/img2txt.png",
                  imageSize: 40.0,
                  onPressed: () {
                    print("点击了按钮4");
                  },
                ),
                ImageTextButton(
                  buttonText: "按钮5",
                  imageUrl: "images/img2txt.png",
                  imageSize: 40.0,
                  onPressed: () {
                    print("点击了按钮5");
                  },
                ),
                ImageTextButton(
                  buttonText: "按钮6",
                  imageUrl: "images/img2txt.png",
                  imageSize: 40.0,
                  onPressed: () {
                    print("点击了按钮6");
                  },
                ),
              ],
            ),
          ],
        )
    );
  }
}


/// 搜索栏
class SearchBar extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const SearchBar({
    Key? key,
    this.text = "",
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        height: 40.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Icon(Icons.search),
            SizedBox(width: 8.0),
            Text(
              text,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}