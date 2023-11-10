import 'package:dockseekerapp/widgets/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:dockseekerapp/router/app_router.dart';

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
    'https://1000marcas.net/wp-content/uploads/2020/08/logo-Diners-Club-International.png',
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
      endDrawer: const SideMenu(),
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
          onPressed: () {
            appRouter.go('/seleccionar');
          },
          icon: const Icon(Icons.arrow_back_ios_sharp, color: Colors.white,),
        ),
      ),
      backgroundColor: const Color(0xffd9d9d9),
      body: ListView(
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Tus datos de pago", style: TextStyle(color: Color(0xff020a51), fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Text("Titular de la tarjeta", style: TextStyle(color: Color(0xff020a51), fontSize: 16)),
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    child: TextFormField(
                      controller: ownerCard,
                      maxLines: 1,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.all(15),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white70, width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                          hintText: 'Ej. Rodolfo Rivera',
                          hintStyle: TextStyle(color: Color(0xffd9d9d9), fontWeight: FontWeight.w400)
                      ),
                    ),
                  )
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Text("Número de la tarjeta", style: TextStyle(color: Color(0xff020a51), fontSize: 16)),
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    child: TextFormField(
                      controller: numberCard,
                      maxLines: 1,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.all(15),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white70, width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                          hintText: 'XXXX XXXX XXXX XXXX',
                          hintStyle: TextStyle(color: Color(0xffd9d9d9), fontWeight: FontWeight.w400)
                      ),
                    ),
                  )
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, top: 8.0, left: 16.0, right: 8.0),
                      child: Text("Fecha de vencimiento", style: TextStyle(color: Color(0xff020a51), fontSize: 16)),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0, top: 8.0, left: 16.0, right: 8.0),
                              child: TextFormField(
                                controller: numberCard,
                                maxLines: 1,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.all(15),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white70, width: 1),
                                        borderRadius: BorderRadius.all(Radius.circular(16))
                                    ),
                                    hintText: 'MM/YYYY',
                                    hintStyle: TextStyle(color: Color(0xffd9d9d9), fontWeight: FontWeight.w400)
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                  ],
                ),

              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, top: 8.0, left: 8.0, right: 16.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:8.0),
                            child: Text("CVV", style: TextStyle(color: Color(0xff020a51), fontSize: 16)),
                          ),
                          Icon(Icons.help_outline, color: Color(0xff020a51), size: 14,)
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0, top: 8.0, left: 8.0, right: 16.0),
                              child: TextFormField(
                                controller: numberCard,
                                maxLines: 1,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.all(15),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white70, width: 1),
                                        borderRadius: BorderRadius.all(Radius.circular(16))
                                    ),
                                    hintText: 'Ej. 123',
                                    hintStyle: TextStyle(color: Color(0xffd9d9d9), fontWeight: FontWeight.w400)
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
            child: Row(
              children: [
                Text("Monto total", style: TextStyle(color: Color(0xff020a51), fontSize: 16)),
                Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text("Ver detalles", style: TextStyle(color: Color(0xff020a51), fontSize: 16)),
                        ),
                        Icon(Icons.arrow_forward, color: Color(0xff020a51))
                      ]
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
            child: Text("S/75.00 PEN", style: TextStyle(color: Color(0xff0093AB), fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  activeColor: Color(0xff0093AB),
                  value: checkBox,
                  onChanged: (value){
                    setState(() {
                      checkBox = value!;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text("Guardar datos para futuras compras", style: TextStyle(color: Color(0xff020a51), fontSize: 14)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 16.0),
            child: FilledButton(
                style: TextButton.styleFrom(backgroundColor: Color(0xffFD5D5D)),
                onPressed: (){_dialogBuilderPayment(context);},
                child: Text("Confirmar")),
          )
        ],
      ),
    );
  }
}


Future<void> _dialogBuilderPayment(BuildContext context){
  return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text("¿Estas seguro?", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15)),
          content:
          const Text("¿Estas seguro que quieres subir el resultado actual? No podras hacer cambios luego.",
              style: TextStyle(color: Colors.black, fontSize: 10)),
          actions:  [
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: const Color(0xff0093AB),
                    padding: const EdgeInsets.symmetric(horizontal: 10)
                ),
                onPressed: (){
                  Navigator.of(context).pop();
                  confirmationPayment(context);},
                child: const Text("Sí", style: TextStyle(color: Colors.white))
            ),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: const Color(0xffFD5D5D),
                    padding: const EdgeInsets.symmetric(horizontal: 10)
                ),
                onPressed: (){ Navigator.of(context).pop();},
                child: const Text("No", style: TextStyle(color: Colors.white))
            )
          ],
        );
      });
}

Future<void> confirmationPayment(BuildContext context){
  return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          backgroundColor: Colors.white,
          alignment: Alignment.center,
          actionsAlignment: MainAxisAlignment.center,
          title: const Text("Pago realizado con éxito", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          content: const Icon(Icons.file_download_done, color: Colors.black, size: 50,),
          actions: [
            TextButton(
                style: TextButton.styleFrom(
                    alignment: Alignment.center,
                    backgroundColor: const Color(0xff0093AB),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(1)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10)
                ),
                onPressed: () {
                  appRouter.go('/home');
                },
                child: const Text("Cerrar", style: TextStyle(color: Colors.white)))
          ],
        );
      }
  );
}
