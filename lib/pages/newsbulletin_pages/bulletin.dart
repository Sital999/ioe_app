import 'package:flutter/material.dart';
import 'package:ioe_app/model/newsmodel.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utils/homeDrawer.dart';

class BulletinDetailPage extends StatelessWidget {
  final BulletinModel bulletin;

  const BulletinDetailPage({Key? key, required this.bulletin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print(news.photo.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          bulletin.bulletinTitle.toString(),
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      drawer: myDrawer(context),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Container(
                  height: 200.0,
                  width: 500.0,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      
                      image: NetworkImage("http://127.0.0.1:8000" + bulletin.photo.toString()), //news.photo.toString()
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              20.heightBox,
              // news.airline[0].name.text.make().px8(),
              // news.airline[0].country.text.make().px8(),
              // news.airline[0].slogan.text.make().px8(),
              // news.airline[0].headQuaters.text.make().px8(),
              // news.airline[0].website.text.make().px8(),
              // news.trips.text.bold.make().px16(),
              10.heightBox,
              ElevatedButton(
                  onPressed: () async {
                    var url = "http://127.0.0.1:8000" + bulletin.file.toString();
                    if (await canLaunch(url)) {
                      await launch(url,
                          forceSafariVC: true, forceWebView: true);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text("Read More"))
            ],
          ).py20(),
        ),
      ),
    );
  }
}