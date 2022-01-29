import 'package:flutter/material.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class PartnershipPage extends StatelessWidget {
  const PartnershipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About IOE",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      backgroundColor: context.canvasColor,
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Partnerships",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Flexible(
              child: ListView(
            children: [
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.linkRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "National and International Linkage",
                  ),
                ),
              )),
              Card(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.industryworkRoute);
                  },
                  title: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Working with Industry"),
                  ),
                  // subtitle: Text("ohhh hoooo"),
                ),
              ),
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.capabilitiesRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Available Capabilities and Technologies"),
                ),
              )),
            ],
            padding: const EdgeInsets.all(10),
          ))
        ],
      ),
    );
  }
}
