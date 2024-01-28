import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/flixv2/screen/subscription_screens/payment_status_screen.dart';
import 'package:prokit_flutter/fullApps/flixv2/utils/common_widgets.dart';

class OrderSummaryScreen extends StatefulWidget {
  String? plan;
  int? planIndex;

  OrderSummaryScreen({this.plan, this.planIndex});

  State<OrderSummaryScreen> createState() => OrderSummaryScreenState();
}

class OrderSummaryScreenState extends State<OrderSummaryScreen> {
  String? subscriptionPlan;
  String? durationOfPremium;
  late num priceOfPremium;
  late num discount = 0;
  double tax = 2;
  num total = 0.0;
  List planValues = [];
  List priceValues = [];
  List totalPrice = [];
  var orderValue = [];
  List plan = [
    'Plan',
    'Duration',
  ];
  List calculation = [
    'Price',
    'Tax',
    'Discount',
  ];
  List totalList = ['Total'];
  List component = [];

  void initState() {
    super.initState();
    if (widget.planIndex == 0) {
      durationOfPremium = '1 Month';
      priceOfPremium = 8.99;
    } else {
      durationOfPremium = '1 Year';
      priceOfPremium = 89.99;
      discount = 10.0;
    }
    countTotal(priceOfPremium);
  }

  num countTotal(num priceOfPremium) {
    num total;
    tax = priceOfPremium * tax / 100;
    discount = priceOfPremium * (discount) / 100;
    total = discount + tax + priceOfPremium;
    this.total = total;
    planValues = [
      'Premium',
      durationOfPremium,
    ];
    priceValues = [
      '\$${this.priceOfPremium.toStringAsFixed(2)}',
      '\$${this.tax.toStringAsFixed(2)}',
      '\$${discount.toStringAsFixed(2)}',
    ];
    totalPrice = [
      '\$${this.total.toStringAsFixed(2)}',
    ];

    component.add(plan);
    component.add(calculation);
    component.add(totalList);

    orderValue.add(planValues);
    orderValue.add(priceValues);
    orderValue.add(totalPrice);
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            height: 6,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.grey.shade600,
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Order Summary',
            style: boldTextStyle(size: 20),
          ),
          SizedBox(
            height: 16,
          ),
          ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, int index) {
                return Column(
                  children: [
                    for (int i = 0; i < component[index].length; i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${component[index][i]}',
                                style: index != 2 ? secondaryTextStyle() : boldTextStyle(size: 14)),
                            index == 0 && i == 0
                                ? GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: 100,
                                      height: 30,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          color: durationOfPremium == '1 Year' ? Colors.amber.shade700 : Colors.red),
                                      child: Wrap(
                                        crossAxisAlignment: WrapCrossAlignment.center,
                                        spacing: 4,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                          Text(
                                            '${orderValue[index][i]}',
                                            style: boldTextStyle(size: 14, color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : Text(
                                    '${orderValue[index][i]}',
                                    style: boldTextStyle(size: 14),
                                  ),
                          ],
                        ),
                      )
                  ],
                );
              },
              separatorBuilder: (context, int index) {
                return Divider(
                  height: 10,
                  indent: 10,
                  endIndent: 10,
                  thickness: 1,
                  color: Colors.grey.shade700,
                );
              },
              itemCount: component.length),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => PaymentStatusScreen(status: 'Successful'),
                ),
              );
            },
            child:
                redirectionButtonContainer(title: 'Proceed To Checkout', width: MediaQuery.of(context).size.width - 32),
          )
        ],
      ),
    );
  }
}
