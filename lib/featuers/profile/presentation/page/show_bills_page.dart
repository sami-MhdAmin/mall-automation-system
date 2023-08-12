import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/widgets/header_page.dart';

class ShowBillsPage extends StatefulWidget {
  const ShowBillsPage({super.key});

  @override
  State<ShowBillsPage> createState() => _ShowBillsPageState();
}

class _ShowBillsPageState extends State<ShowBillsPage> {
  final TextEditingController dateFrom = TextEditingController(
      text: DateFormat('yyyy-MM-dd').format(DateTime.now()));
  final TextEditingController dateTo = TextEditingController(
      text: DateFormat('yyyy-MM-dd').format(DateTime.now()));

  @override
  Widget build(BuildContext context) {
    List<Bills> bills = [
      Bills(name: 'salim Slave', price: '0', quantity: '1'),
      Bills(name: 'salim Slave', price: '0', quantity: '1'),
      Bills(name: 'salim Slave', price: '0', quantity: '1'),
      Bills(name: 'salim Slave', price: '0', quantity: '1'),
      Bills(name: 'salim Slave', price: '0', quantity: '1'),
      Bills(name: 'salim Slave', price: '0', quantity: '1'),
      Bills(name: 'salim Slave', price: '0', quantity: '1'),
      Bills(name: 'salim Slave', price: '0', quantity: '1'),
      Bills(name: 'salim Slave', price: '0', quantity: '1'),
      Bills(name: 'salim Slave', price: '0', quantity: '1'),
      Bills(name: 'salim Slave', price: '0', quantity: '1'),
      Bills(name: 'salim Slave', price: '0', quantity: '1'),
      Bills(name: 'salim Slave', price: '0', quantity: '1'),
      Bills(name: 'salim Slave', price: '0', quantity: '1'),
      Bills(name: 'salim Slave', price: '0', quantity: '1'),
    ];
    return Scaffold(
      body: Container(
        height: 1.sh,
        width: 1.sw,
        color: ColorManager.backgroundL,
        child: Column(
          children: [
            SizedBox(
              height: 150.h,
            ),
            const HeaderPage(title: 'My Bills', left: true),
            SizedBox(
              height: 150.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () async {
                    final DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2019),
                      lastDate: DateTime.now(),
                    );
                    if (picked != null) {
                      setState(() {
                        dateFrom.text = DateFormat('yyyy-MM-dd').format(picked);
                      });
                    }
                  },
                  child: Container(
                    height: 160.h,
                    width: 400.w,
                    decoration: BoxDecoration(
                        color: const Color(0xaa333333),
                        borderRadius: BorderRadius.circular(30.r)),
                    child: Center(
                      child: Text(
                        'from: ${dateFrom.text}',
                        style: TextStyle(color: Colors.white, fontSize: 30.sp),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    final DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.parse(dateFrom.text),
                      lastDate: DateTime.now(),
                    );
                    if (picked != null) {
                      setState(() {
                        dateTo.text = DateFormat('yyyy-MM-dd').format(picked);
                      });
                    }
                  },
                  child: Container(
                    height: 160.h,
                    width: 400.w,
                    decoration: BoxDecoration(
                        color: const Color(0xaaeeeeee),
                        borderRadius: BorderRadius.circular(30.r)),
                    child: Center(
                      child: Text(
                        'to: ${dateTo.text}',
                        style: TextStyle(
                            color: ColorManager.black, fontSize: 30.sp),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100.h,
                  width: 100.h,
                  decoration: BoxDecoration(
                      color: const Color(0xaa3CDDE8),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100.h,
            ),
            SizedBox(
              height: 1200.h,
              width: 1.sw,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 40.w),
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    border: TableBorder.all(color: ColorManager.grey),
                    children: [
                      TableRow(
                        children: [
                          TableCellWidget(
                            title: 'Product Name',
                          ),
                          TableCellWidget(
                            title: 'quantity',
                          ),
                          TableCellWidget(
                            title: 'price',
                          ),
                        ],
                      ),
                      ...bills.map((bill) {
                        return TableRow(
                          children: [
                            TableCellWidget(
                              title: bill.name,
                            ),
                            TableCellWidget(
                              title: bill.quantity,
                            ),
                            TableCellWidget(
                              title: bill.price,
                            ),
                          ],
                        );
                      })
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 60.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total: ',
                    style: TextStyle(
                        color: ColorManager.grey,
                        fontSize: 50.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '10000sp',
                    style: TextStyle(
                        color: ColorManager.black,
                        fontSize: 50.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Bills {
  String name;
  String quantity;
  String price;
  Bills({required this.name, required this.price, required this.quantity});
}

class TableCellWidget extends StatelessWidget {
  const TableCellWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Container(
        height: 100.h,
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(color: ColorManager.grey, fontSize: 30.sp),
          ),
        ),
      ),
    );
  }
}
