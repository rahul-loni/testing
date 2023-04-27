import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:store_rest_api/widget/feeds_widget.dart';

import '../widget/appbar_icon.dart';
import '../widget/sale_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController? _textEditingController;
  @override
  void initState() {
    _textEditingController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController?.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            elevation: 4,
            title: const Text(
              "Home",
              style: TextStyle(color: Colors.purple),
            ),
            leading: AppBarIcons(
              function: () {},
              icon: IconlyBold.category,
            ),
            actions: [
              AppBarIcons(
                function: () {},
                icon: IconlyBold.user3,
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _textEditingController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "Search ...",
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      suffixIcon: Icon(IconlyLight.search),
                      fillColor: Theme.of(context).cardColor),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: size.height * 0.25,
                  child: Swiper(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return SaleWidget();
                    },
                    pagination: SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                        color: Colors.white,
                        activeColor: Colors.red,
                      ),
                    ),
                    //control: SwiperControl(),
                  ),
                ),
                FeedWidget(),
              ],
            ),
          )),
    );
  }
}
