import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../svg_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 12, bottom: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 231,
                    height: 48,
                    color: Colors.grey,
                    child: TextField(
                      decoration: InputDecoration(

                      ),
                    )
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.string(
                        FilterIcon,
                        width: 50,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      SvgPicture.string(
                        NontificationIcon,
                        width: 50,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
