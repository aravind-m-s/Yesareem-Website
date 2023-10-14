import 'package:flutter/material.dart';
import 'package:yesareem_website/Constants/app_colors.dart';

class OrderSummaryPage extends StatefulWidget {
  const OrderSummaryPage({super.key});

  @override
  State<OrderSummaryPage> createState() => _OrderSummaryPageState();
}

class _OrderSummaryPageState extends State<OrderSummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Title(
      color: Colors.black,
      title: "Order Summary",
      child: Scaffold(
        body: mainBackDrop(context),
      ),
    );
  }

  Container mainBackDrop(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: AppColors.primaryColors,
      height: MediaQuery.of(context).size.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'Order summary of the application\nwhere we accept UPI,\nCards and Net Banking',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            height: 800,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/order-summary.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
