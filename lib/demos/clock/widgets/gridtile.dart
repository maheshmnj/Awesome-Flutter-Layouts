import 'package:awesome_flutter_layouts/demos/clock/constants/constants.dart';
import 'package:flutter/material.dart';

class KGridTile extends StatelessWidget {
  const KGridTile(
      {Key? key,
      required this.image,
      required this.title,
      required this.price,
      this.onTap,
      this.onAddToCart})
      : super(key: key);

  final String image;
  final String title;
  final int price;
  final Function? onTap;
  final Function(String)? onAddToCart;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [shadowLight],
          color: Colors.white,
          borderRadius: defaultRadius),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(2),
              child: Image.asset(image),
              decoration: BoxDecoration(
                borderRadius: defaultRadius.copyWith(
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
                color: clockGrey,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 12),
                    child: Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ) +
                        EdgeInsets.only(bottom: 10),
                    child: Text(
                      '\$$price',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  )
                ],
              ),
              Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(6)),
                margin: const EdgeInsets.all(8),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}