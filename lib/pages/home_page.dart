import 'package:flutter/material.dart';
import 'package:flutter_api/ui/general/colors.dart';
import 'package:flutter_api/ui/widgets/item_filter_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: kBrandSecondaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    icon: const Icon(Icons.explore_outlined),
                    label: const Text('Explorar'),
                  ),
                  const SizedBox(
                    height: 32.0,
                    child: VerticalDivider(
                      color: kBrandSecondaryColor,
                      thickness: 1.0,
                    ),
                  ),
                  ItemFilterWidget(
                    text: "Todos",
                    isSelected: true,
                  ),
                  ItemFilterWidget(
                    text: "Mixes",
                    isSelected: false,
                  ),
                  ItemFilterWidget(
                    text: "Música",
                    isSelected: false,
                  ),
                  ItemFilterWidget(
                    text: "Progamación",
                    isSelected: false,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Image.network(
                      "https://images.pexels.com/photos/1552242/pexels-photo-1552242.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      width: double.infinity,
                      height: height * 0.4,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 2.0),
                        margin: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        color: Colors.black.withOpacity(0.7),
                        child: Text(
                          "23:22",
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                      ),
                    ),
                  ],
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: Colors.white12,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/1229356/pexels-photo-1229356.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1,"),
                  ),
                  title: Text(
                    "Lorem ipsum dolor sit amet",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                  subtitle: Text(
                    "kevinFitness 6.5 M de vistas hace 4 años",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 13.0,
                    ),
                  ),
                  trailing: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 4.0),
                        child: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
