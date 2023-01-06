import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_flutter_project/resources/dimens.dart';
import 'package:test_flutter_project/resources/strings.dart';
import 'package:test_flutter_project/resources/colors.dart';

import 'models/product.dart';

class CatalogWidget extends StatefulWidget {
  const CatalogWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return CatalogWidgetState();
  }
}

class CatalogWidgetState extends State<CatalogWidget> {
  int headerHeight = 200;
  Product product = Product("ТУРРОН БИТС", "АРТ-505467", "Нежнейший десерт",
      "Подвал", "Мороженое", 7, 3, 8, 6.25, "assets/images/ice_cream.jpg");

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Image.asset(
            "assets/images/ice_cream.jpg",
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
          Container(
              padding: EdgeInsets.only(
                  top: (headerHeight - Dimensions.corner).toDouble()),
              child: ProductCardWidget(product: product)),
        ],
      ),
    );
  }
}

class ProductCardWidget extends StatefulWidget {
  final Product product;

  const ProductCardWidget({super.key, required this.product});

  @override
  State<ProductCardWidget> createState() {
    return _ProductCardWidgetState(product);
  }
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  Product? product;
  int _count = 1;

  _ProductCardWidgetState(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
      decoration: const BoxDecoration(
        color: CustomColors.productBackground,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.corner),
            topRight: Radius.circular(Dimensions.corner)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.white,
            offset: Offset(0, 0),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(product!.name,
                      style: const TextStyle(fontWeight: FontWeight.w700)),
                  const SizedBox(width: 4),
                  Text(product!.type),
                ],
              ),
              Text(product!.id,
                  style: const TextStyle(color: CustomColors.textGrey)),
              Text(Strings.storagePlace + product!.place,
                  style: const TextStyle(
                      color: CustomColors.textBlue,
                      fontSize: Dimensions.fontSmall)),
              Text("${product!.allCount - _count} ${Strings.items}"),
              const SizedBox(height: 8),
              Row(
                children: [
                  AmountWidget(isReserved: false, count: product!.restCount),
                  const SizedBox(width: 8),
                  AmountWidget(isReserved: true, count: product!.reservedCount)
                ],
              ),
              const SizedBox(height: 8),
              const Text(Strings.description,
                  style: TextStyle(fontWeight: FontWeight.w700)),
              const SizedBox(height: 8),
              Text(product!.description),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Counter(callback: (val) => setState(() => _count = val), maxValue: product!.allCount),
              const SizedBox(height: 10),
              Text("USD ${product!.price * _count}",
                  style: const TextStyle(fontWeight: FontWeight.w700))
            ],
          ),
        ],
      ),
    );
  }
}

class AmountWidget extends StatefulWidget {
  final bool isReserved;
  final int count;

  const AmountWidget(
      {super.key, required this.isReserved, required this.count});

  @override
  State<StatefulWidget> createState() {
    return _AmountWidgetState(isReserved, count);
  }
}

class _AmountWidgetState extends State<AmountWidget> {
  bool isReserved = false;
  int count;

  _AmountWidgetState(this.isReserved, this.count);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: !isReserved ? CustomColors.textBlue : Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$count ${Strings.items}",
              style: TextStyle(
                  color: isReserved ? CustomColors.textBlue : Colors.white)),
          const SizedBox(height: 8),
          Text(isReserved ? Strings.rest : Strings.reserved,
              style: TextStyle(
                  color: isReserved ? Colors.black : Colors.white,
                  fontSize: 10)),
        ],
      ),
    );
  }
}

typedef void CountCallback(int val);

class Counter extends StatefulWidget {
  final CountCallback callback;
  int increment = 1;
  final int maxValue;

  Counter({super.key, required this.callback, required this.maxValue});

  @override
  _CounterState createState() => _CounterState(callback, maxValue);
}

class _CounterState extends State<Counter> {
  int value = 1;
  int maxValue;
  late CountCallback callback;

  _CounterState(this.callback, this.maxValue);

  increaseValue() {
    setState(() {
      if (value == maxValue) {
        return;
      }
      value = value + widget.increment;
      callback(value);
    });
  }

  decreaseValue() {
    setState(() {
      if (value == 0) {
        return;
      }
      value = value - widget.increment;
      callback(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
          width: 20,
          height: 20,
          child: ElevatedButton(
            onPressed: decreaseValue,
            style: ElevatedButton.styleFrom(
                backgroundColor: CustomColors.blueLight,
                padding: EdgeInsets.all(0)),
            child: const Text(
              "-",
              style: TextStyle(color: CustomColors.textBlue),
            ),
          )),
      const SizedBox(width: 4),
      Text(value.toString()),
      const SizedBox(width: 4),
      SizedBox(
          width: 20,
          height: 20,
          child: ElevatedButton(
            onPressed: increaseValue,
            style: ElevatedButton.styleFrom(
                backgroundColor: CustomColors.textBlue,
                padding: EdgeInsets.all(0)),
            child: const Text(
              "+",
              style: TextStyle(color: Colors.white),
            ),
          ))
    ]);
  }
}
