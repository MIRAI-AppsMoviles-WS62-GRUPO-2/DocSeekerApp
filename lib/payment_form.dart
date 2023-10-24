import 'package:doc_seeker_app/sidebar.dart';
import 'package:flutter/material.dart';

class PaymentForm extends StatefulWidget {
  const PaymentForm({super.key});

  @override
  State<PaymentForm> createState() => _PaymentFormState();
}


class _PaymentFormState extends State<PaymentForm> {
  bool checkBox = false;
  List<String> methodsImages = [
    'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Visa_Logo.png/640px-Visa_Logo.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/800px-MasterCard_Logo.svg.png',
    'https://cdn-icons-png.flaticon.com/512/196/196539.png',
    'https://logos-world.net/wp-content/uploads/2020/08/PayPal-Symbol.png',
    'https://1000marcas.net/wp-content/uploads/2020/08/logo-Diners-Club-International.png'
  ];
  List<String> methodsList = [
    'Visa', 'MasterCard', 'AmericanExpress', 'Paypal', 'DinnersClub'
  ];

  String actual = '';
  final ownerCard = TextEditingController();
  final numberCard = TextEditingController();
  final expirationDate = TextEditingController();
  final cvv = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text("Datos de tarjeta", style: TextStyle(color: Colors.white),),
        backgroundColor: const Color(0xff0093AB),
        centerTitle: true,
        actions: <Widget>[
          Builder(
              builder: (context) {
                return IconButton(onPressed: (){ Scaffold.of(context).openEndDrawer();}, icon: const Icon(Icons.menu, color: Colors.white,));
              }
          )
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_sharp, color: Colors.white,),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            width: double.infinity,
            height: 170,
            decoration: BoxDecoration(color: const Color(0xffFD5D5D)),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        child:
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Métodos de pago", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
                          )),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: TextButton(
                                onPressed: (){},
                                child: const Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Text("Ver todo", style: TextStyle(color: Colors.white, fontSize:14)),
                                    ),
                                    Icon(Icons.arrow_forward, color: Colors.white, size: 14)
                                  ]
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: methodsList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1
                    ),
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              actual = methodsList[index];
                            });
                          },
                          child: Container(
                            width: 80,
                            height: 80,
                            padding: const EdgeInsets.all(10),
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: actual==methodsList[index]? Color(0xffFFFFFF) : Color(0xffFFFFFF).withOpacity(0.5)
                            ),
                            child: Opacity(
                              opacity: actual==methodsList[index]? 1 : 0.5,
                              child: Image(
                                image: NetworkImage(methodsImages[index]),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        )
                      );
                    }),
                )
              ],
            ),
          ),
          Text("Tus datos de pago"),
          Text("Titular de la tarjeta"),
          /*Row(
            children: [
              Expanded(child: TextFormField(controller: ownerCard)),
            ],
          ),*/
          Text("Número de la tarjeta"),
          /*Row(
            children: [
              Expanded(child: TextFormField(controller: numberCard)),
            ],
          ),*/
          Row(
            children: [
              Column(
                children: [
                  Text("Fecha de vencimiento"),
                  /*Row(
                    children: [
                      Expanded(child: TextFormField(controller: expirationDate)),
                    ],
                  )*/
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text("CVV"),
                      Icon(Icons.help_outline)
                    ],
                  ),
                  /*Row(
                    children: [
                      Expanded(child: TextFormField(controller: cvv)),
                    ],
                  )*/
                ],
              )
            ],
          ),
          Row(
            children: [
              Text("Monto total"),
              Row(
                  children: [
                    Text("Ver detalles"),
                    Icon(Icons.arrow_forward)
                ]
              )
            ],
          ),
          Text("S/75.00 PEN"),
          CheckboxListTile(
            value: checkBox,
            onChanged: (value){
              setState(() {
                checkBox = value!;
              });
            },
            title: Text("Guardar datos para futuras compras"),
          ),
          FilledButton(onPressed: (){}, child: Text("Confirmar"))
        ],
      ),
    );
  }
}

