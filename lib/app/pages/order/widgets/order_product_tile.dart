import 'package:flutter/material.dart';
import 'package:vakinha_delivery_app/app/core/ui/styles/colors_app.dart';
import 'package:vakinha_delivery_app/app/core/ui/styles/text_style.dart';
import 'package:vakinha_delivery_app/app/core/ui/widgets/delivery_increment_decrement_button.dart';

import 'package:vakinha_delivery_app/app/dto/order_product_dto.dart';

class OrderProductTile extends StatelessWidget {
  final int index;
  final OrderProductDto productDto;

  const OrderProductTile({
    Key? key,
    required this.index,
    required this.productDto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Image.network(
            'https://burgerx.com.br/assets/img/galeria/burgers/x-burger.jpg',
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'X-burger',
                    style:
                        context.textStyles.textRegular.copyWith(fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19.90',
                        style: context.textStyles.textMidium.copyWith(
                          fontSize: 14,
                          color: context.colors.secondary,
                        ),
                      ),
                      DeliveryIncrementDecrementButton.compact(
                          amount: 1, incrementTap: () {}, decrementTap: () {}),
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
