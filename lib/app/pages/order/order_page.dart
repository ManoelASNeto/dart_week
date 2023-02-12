import 'package:flutter/material.dart';
import 'package:vakinha_delivery_app/app/core/ui/widgets/delivery_button.dart';
import '../../core/ui/styles/text_style.dart';
import '../../core/ui/widgets/delivery_appbar.dart';
import '../../dto/order_product_dto.dart';
import '../../models/product_model.dart';
import 'widgets/order_field.dart';
import 'widgets/order_product_tile.dart';
import 'widgets/payment_types_field.dart';
import 'package:validatorless/validatorless.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppbar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    'Carrinho',
                    style: context.textStyles.textTitle,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/trashRegular.png'),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 2,
              (context, index) {
                return Column(
                  children: [
                    OrderProductTile(
                      index: index,
                      productDto: OrderProductDto(
                        amount: 10,
                        productModel: ProductModel.fromMap({}),
                      ),
                    ),
                    const Divider(),
                  ],
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total do Pedido',
                        style: context.textStyles.textExtraBold
                            .copyWith(fontSize: 16),
                      ),
                      Text(
                        r'R$ 200,00',
                        style: context.textStyles.textExtraBold
                            .copyWith(fontSize: 20),
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                OrderField(
                  title: 'Endereço de Entrega',
                  hintText: 'Digite um endereço',
                  controller: TextEditingController(),
                  validator: Validatorless.required('m'),
                ),
                const SizedBox(
                  height: 10,
                ),
                OrderField(
                  title: 'CPF',
                  hintText: 'Digite um CPF',
                  controller: TextEditingController(),
                  validator: Validatorless.required('m'),
                ),
                const PaymentTypesField(),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Divider(color: Colors.grey),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: DeliveryButton(
                      width: double.infinity,
                      height: 48,
                      label: 'FINALIZAR',
                      onPressed: () {}),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
