import 'package:flutter/material.dart';
import 'package:flutter_api/ui/general/colors.dart';
import 'package:flutter_api/ui/widgets/item_filter_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
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
          ],
        ),
      ),
    );
  }
}
