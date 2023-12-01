import 'package:flutter/material.dart';
import 'package:slot/global/helper.dart' as Global;

class BookNow extends StatefulWidget {
  const BookNow({super.key});

  @override
  State<BookNow> createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  List<String> filter = <String>['All', 'Available'];
  String filterVal = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Global.customDrawer(context),
      appBar: Global.customBar(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * .9,
        height: 56.0,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Global.priCol,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          onPressed: () {},
          child: Global.customText(
              text: 'Book Now', type: 'header', customCol: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Global.customText(
                    text: 'Choose a slot', type: 'header', size: 20),
                DropdownMenu<String>(
                  // width: MediaQuery.of(context).size.width * .9,
                  inputDecorationTheme: InputDecorationTheme(
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    constraints: BoxConstraints.tight(
                      const Size.fromHeight(40),
                    ),
                    fillColor: Color.fromRGBO(89, 85, 85, 0.6),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  initialSelection: filter.first,
                  onSelected: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      filterVal = value!;
                    });
                  },
                  dropdownMenuEntries:
                      filter.map<DropdownMenuEntry<String>>((String value) {
                    return DropdownMenuEntry<String>(
                        value: value, label: value);
                  }).toList(),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 4,
              children: [
                CustomCont('00-01'),
                CustomCont('01-02'),
                CustomCont('02-03'),
                CustomCont('03-04'),
                CustomCont('04-05'),
                CustomCont('05-06'),
                CustomCont('06-07'),
                CustomCont('07-08'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container CustomCont(text) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Color.fromRGBO(99, 208, 200, 1),
      child: Center(
          child: Global.customText(
              text: text, type: 'header', customCol: Colors.white, size: 14)),
    );
  }
}
