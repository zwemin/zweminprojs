import 'package:currencyapp/apiprovider/apicurrency.dart';
import 'package:currencyapp/models/currency.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:fluttertoast/fluttertoast.dart';

class CalculationPage extends StatefulWidget {
  String rates;
  CalculationPage({this.rates});
  @override
  _CalculationPageState createState() => _CalculationPageState();
}

class _CalculationPageState extends State<CalculationPage> {
  String errormessage;
  TextEditingController textcontroller = new TextEditingController();
  double ans = 0.0;
  String name;
  String expansiontitle = "Choose your currency";
  String dropdownvalue1 = "USD";
  String dropdownvlaue2 = "MYR";
  List<String> namelist = [
    "USD",
    "CZK",
    "JPY",
    "KRW",
    "VND",
    "PHP",
    "HKD",
    "BRL",
    "RSD",
    "MYR",
    "CAD",
    "GBP",
    "SEK",
    "NOK",
    "ILS",
    "DKK",
    "AUD",
    "RUB",
    "KWD",
    "INR",
    "BND",
    "EUR",
    "ZAR",
    "NPR",
    "CNY",
    "CHF",
    "KES",
    "THB",
    "PKR",
    "EGP",
    "BDT",
    "SAR",
    "LAK",
    "SGD",
    "IDR",
    "KHR",
    "LKR",
    "NZD",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.flag),
          title: Text('CurrencyCalculationPage',style: Theme.of(context).textTheme.title),
        ),
        body: FutureBuilder<Currency>(
          future: ApiProvider().currencydata(),
          builder: (BuildContext context, AsyncSnapshot<Currency> snapshot) {
            print("======>$snapshot");
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.data != null) {
                return dropdownfield(snapshot.data);
              } else {
                return Container();
              }
            } else {
              return CircularProgressIndicator();
            }
          },
        )
    );
  }

  double finalresult2 = 0.0;
  double finalresult = 0.0;
  double oneunitamountusd = 0.0;
  double oneunitamountczk = 0.0;
  double oneunitamountjpy = 0.0;
  double oneunitamountkrw = 0.0;
  double oneunitamountvnd = 0.0;
  double oneunitamountphp = 0.0;
  double oneunitamounthkd = 0.0;
  double oneunitamountbrl = 0.0;
  double oneunitamountrsd = 0.0;
  double oneunitamountmyr = 0.0;
  double oneunitamountcad = 0.0;
  double oneunitamountgbp = 0.0;
  double oneunitamountsek = 0.0;
  double oneunitamountnok = 0.0;
  double oneunitamountils = 0.0;
  double oneunitamountdkk = 0.0;
  double oneunitamountaud = 0.0;
  double oneunitamountrub = 0.0;
  double oneunitamountkwd = 0.0;
  double oneunitamountinr = 0.0;
  double oneunitamountbnd = 0.0;
  double oneunitamounteur = 0.0;
  double oneunitamountzar = 0.0;
  double oneunitamountnpr = 0.0;
  double oneunitamountcny = 0.0;
  double oneunitamountchf = 0.0;
  double oneunitamountkes = 0.0;
  double oneunitamountthb = 0.0;
  double oneunitamountpkr = 0.0;
  double oneunitamountegp = 0.0;
  double oneunitamountbdt = 0.0;
  double oneunitamountsar = 0.0;
  double oneunitamountlak = 0.0;
  double oneunitamountsgd = 0.0;
  double oneunitamountidr = 0.0;
  double oneunitamountkhr = 0.0;
  double oneunitamountlkr = 0.0;
  double oneunitamountnzd = 0.0;

  Widget dropdownfield(Currency currency) {
    oneunitamountusd = double.parse(currency.rates.USD.replaceAll(',', ''));
    oneunitamountphp = double.parse(currency.rates.PHP.replaceAll(',', ''));
    oneunitamounthkd = double.parse(currency.rates.HKD.replaceAll(',', ''));
    oneunitamountbrl = double.parse(currency.rates.BRL.replaceAll(',', ''));
    oneunitamountrsd = double.parse(currency.rates.RSD.replaceAll(',', ''));
    oneunitamountmyr = double.parse(currency.rates.MYR.replaceAll(',', ''));
    oneunitamountcad = double.parse(currency.rates.CAD.replaceAll(',', ''));
    oneunitamountgbp = double.parse(currency.rates.GBP.replaceAll(',', ''));
    oneunitamountsek = double.parse(currency.rates.SEK.replaceAll(',', ''));
    oneunitamountnok = double.parse(currency.rates.NOK.replaceAll(',', ''));
    oneunitamountils = double.parse(currency.rates.ILS.replaceAll(',', ''));
    oneunitamountdkk = double.parse(currency.rates.DKK.replaceAll(',', ''));
    oneunitamountaud = double.parse(currency.rates.AUD.replaceAll(',', ''));
    oneunitamountrub = double.parse(currency.rates.RUB.replaceAll(',', ''));
    oneunitamountkwd = double.parse(currency.rates.KWD.replaceAll(',', ''));
    oneunitamountinr = double.parse(currency.rates.INR.replaceAll(',', ''));
    oneunitamountbnd = double.parse(currency.rates.BND.replaceAll(',', ''));
    oneunitamounteur = double.parse(currency.rates.EUR.replaceAll(',', ''));
    oneunitamountzar = double.parse(currency.rates.ZAR.replaceAll(',', ''));
    oneunitamountnpr = double.parse(currency.rates.NPR.replaceAll(',', ''));
    oneunitamountcny = double.parse(currency.rates.CNY.replaceAll(',', ''));
    oneunitamountchf = double.parse(currency.rates.CHF.replaceAll(',', ''));
    oneunitamountkes = double.parse(currency.rates.KES.replaceAll(',', ''));
    oneunitamountthb = double.parse(currency.rates.THB.replaceAll(',', ''));
    oneunitamountpkr = double.parse(currency.rates.PKR.replaceAll(',', ''));
    oneunitamountegp = double.parse(currency.rates.EGP.replaceAll(',', ''));
    oneunitamountbdt = double.parse(currency.rates.BDT.replaceAll(',', ''));
    oneunitamountsar = double.parse(currency.rates.SAR.replaceAll(',', ''));
    oneunitamountlak = double.parse(currency.rates.LAK.replaceAll(',', ''));
    oneunitamountsgd = double.parse(currency.rates.SGD.replaceAll(',', ''));
    oneunitamountidr = double.parse(currency.rates.IDR.replaceAll(',', ''));
    oneunitamountkhr = double.parse(currency.rates.KHR.replaceAll(',', ''));
    oneunitamountlkr = double.parse(currency.rates.LKR.replaceAll(',', ''));
    oneunitamountnzd = double.parse(currency.rates.NZD.replaceAll(',', ''));
    oneunitamountczk = double.parse(currency.rates.CZK.replaceAll(',', ''));

    return prefix0.ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            style: prefix0.Theme.of(context).textTheme.body1,
            cursorColor: Colors.black,
            controller: textcontroller,
            keyboardType: prefix0.TextInputType.number,
            decoration: InputDecoration(
                fillColor: Colors.white,
                suffixIcon: Icon(Icons.monetization_on),
                hintText: 'Pls Enter your amount',
                errorText: errormessage,
                border: new OutlineInputBorder(
//                  borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide:
                        prefix0.BorderSide(width: 2, color: Colors.green))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropDownField(
            value: dropdownvalue1,
            required: true,
            strict: true,
            items: namelist,
            textStyle: prefix0.Theme.of(context).textTheme.body1,
            onValueChanged: (dynamic newValue) {
                dropdownvalue1 = newValue;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropDownField(
            value: dropdownvlaue2,
            required: true,
            strict: true,
            items: namelist,
            textStyle: prefix0.Theme.of(context).textTheme.body1,
            onValueChanged: (dynamic newValue) {
                dropdownvlaue2 = newValue;
            },
          ),
        ),
//        ExpansionTile(title: Text('$expansiontitle'), children: [
//          Column(
//            children: <Widget>[
//              Text(
//                "Pieter's Very own Pizza. Taste the richness",
//                textAlign: TextAlign.center,
//                style: TextStyle(
//                    fontStyle: FontStyle.italic,
//                    color: Colors.black87,
//                    fontSize: 20.0),
//              ),
//              Image.network(
//                  "https://cdn3.iconfinder.com/data/icons/food-4-5/128/178-512.png")
//            ],
//          )
//        ]),
        Center(child: Text('Result:${ans.toStringAsFixed(3)}',style: prefix0.Theme.of(context).textTheme.headline,)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            child: Text('Calculate',style: prefix0.Theme.of(context).textTheme.body1,),
            onPressed: () {
              print('valueone $dropdownvalue1');
              print('valuetwo $dropdownvlaue2');
              setState(() {
                if (textcontroller.text.isEmpty) {
                  errormessage = 'amount should not empty';
                  Fluttertoast.showToast(
                      msg: "This is Center Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIos: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                } else {
                  calculate(dropdownvalue1, dropdownvlaue2);
                }
              });
            },
          ),
        ),

      ],
    );
  }

  calculate(String vone, String vtwo) {
    if (vone == 'MYR' && vtwo == 'MYR') {
      ans = double.parse(textcontroller.text) * 1;
    }
    else if (vone == 'USD' && vtwo == 'MYR')
    {
      ans = double.parse(textcontroller.text) * oneunitamountusd;
    }
    else if (vone == "PHP" && vtwo == "MYR")
    {
      ans = double.parse(textcontroller.text) * oneunitamountphp;
    }
    else if (vone == "CZK" && vtwo == "MYR")
    {
      ans = double.parse(textcontroller.text) * oneunitamountczk;
    }
    else if(vone == "JPY" && vtwo == "MYR")
      {
        ans = double.parse(textcontroller.text) *  oneunitamountjpy;
      }
    else if(vone == "VND" && vtwo =="MYR")
      {
        ans = double.parse(textcontroller.text) * oneunitamountvnd;
      }

    else if (vone == 'MYR' && vtwo == 'USD')
    {
      ans = double.parse(textcontroller.text) / oneunitamountmyr;
    }
    else if (vone == "MYR" && vtwo == "PHP")
    {
      ans = double.parse(textcontroller.text) / oneunitamountmyr;
    }
    else if (vone == "MYR" && vtwo == "CZK")
    {
      ans = double.parse(textcontroller.text) / oneunitamountmyr;
    }
    else if(vone == "MYR" && vtwo == "JPY")
    {
      ans = double.parse(textcontroller.text) /  oneunitamountmyr;
    }
    else if(vone == "MYR" && vtwo =="VND")
    {
      ans = double.parse(textcontroller.text) / oneunitamountmyr;
    }
  }
}
