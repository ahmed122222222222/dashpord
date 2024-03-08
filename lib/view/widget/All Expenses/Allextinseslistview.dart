import 'package:flutter/widgets.dart';
import 'package:resposive/core/utiles/image.dart';
import 'package:resposive/model/Allexpensiseiteammodel.dart';
import 'package:resposive/view/widget/All%20Expenses/Selected.dart';

class AllextEnsiveListView extends StatefulWidget {
  const AllextEnsiveListView({
    super.key,
  });
  static List model = [
    Allexpensiseiteammodel(
      date: 'April 2022',
      img: Assets.imageBalance,
      price: r'$20,129',
      titel: 'Balance',
    ),
    Allexpensiseiteammodel(
      date: 'April 2022',
      img: Assets.imageIncome,
      price: r'$20,129',
      titel: 'Income',
    ),
    Allexpensiseiteammodel(
      date: 'April 2022',
      img: Assets.imageExpenses,
      price: r'$20,129',
      titel: 'Expenses',
    ),
  ];

  @override
  State<AllextEnsiveListView> createState() => _AllextEnsiveListViewState();
}

class _AllextEnsiveListViewState extends State<AllextEnsiveListView> {
  int selin = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: AllextEnsiveListView.model
            .asMap()
            .entries
            .map((e) => Expanded(
                child: e.key == 1
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selin = e.key;
                              });
                            },
                            child: Selected(
                              isative: selin == e.key,
                              allexpensiseiteammodel: e.value,
                            )))
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            selin = e.key;
                          });
                        },
                        child: Selected(
                          allexpensiseiteammodel: e.value,
                          isative: selin == e.key,
                        ))))
            .toList());
  }
}
