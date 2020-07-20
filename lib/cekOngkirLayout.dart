import 'package:flutter/material.dart';
import 'package:ongkircek/settings.dart';

class CekOngkirLayout extends StatefulWidget {
  @override
  _CekOngkirLayoutState createState() => _CekOngkirLayoutState();
}

class _CekOngkirLayoutState extends State<CekOngkirLayout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: Container(
            padding: EdgeInsets.all(50),
            color: kMainColor,
            child: Center(
              child: Text('Ongkir Check'),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                AreaTitle(
                  title: 'Asal Pengiriman',
                ),
                AreaContainer(),
                AreaTitle(
                  title: 'Tujuan Pengiriman',
                ),
                AreaContainer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 35),
                  child: Center(
                    child: RaisedButton(
                      color: kMainColor,
                      onPressed: () {},
                      child: Text(
                        'Periksa Ongkos',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AreaTitle extends StatelessWidget {
  final String title;
  AreaTitle({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Icon(Icons.chevron_right),
          Text(
            this.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class AreaContainer extends StatelessWidget {
  const AreaContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: kMainColor),
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Buleleng, Bali, Bali'),
          Icon(
            Icons.settings,
            color: kMainColor,
          )
        ],
      ),
    );
  }
}
