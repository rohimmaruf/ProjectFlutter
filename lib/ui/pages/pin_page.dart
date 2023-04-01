import 'package:flutter/material.dart';
import 'package:payment/shared/theme.dart';
import 'package:payment/ui/widgets/buttons.dart';

class PinPage extends StatefulWidget {
  const PinPage({Key? key}) : super(key: key);

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  // Bikin state
  final TextEditingController pinControler = TextEditingController(text: '');

  // bikin fungcition untuk menambahkan dan mengurangi si number untuk password
  addPin(String number) {
    //  Jika si pin controler  panjang nomornya kurang dari 6 maka pintoroller di tambah nomor / number
    if (pinControler.text.length < 6) {
      setState(() {
        pinControler.text = pinControler.text + number;
      });
    }
    // membuta kondidisi dimana jika dia 6 dihit atau password default maka nilai dia adalah true
    if (pinControler.text == '123123') {
      Navigator.pop(context, true);
    }
  }

  // bikin fungcution untuk mengurangi angka
  deletePin() {
    // Jika si pin control tidak kosong maka pincontroler muncul semua (substring conth : 123456) akan berkutang - 1
    if (pinControler.text.isNotEmpty) {
      setState(() {
        pinControler.text =
            pinControler.text.substring(0, pinControler.text.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkbacgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 58,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sha Pin',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semibold,
                ),
              ),
              const SizedBox(
                height: 72,
              ),
              // Membuat kolom passord
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: pinControler,
                  obscureText: true,
                  obscuringCharacter: '*',
                  cursorColor: greyColor,
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 16,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 66,
              ),
              // Untuk membuat tulisan seperti colum colum
              Wrap(
                //  Untuk membuat jarak antara pon atau tombol
                spacing: 40,
                runSpacing: 40,
                children: [
                  CustomInputbuttom(
                    title: '1',
                    onTap: () {
                      addPin('1');
                    },
                  ),
                  CustomInputbuttom(
                    title: '2',
                    onTap: () {
                      addPin('1');
                    },
                  ),
                  CustomInputbuttom(
                    title: '3',
                    onTap: () {
                      addPin('1');
                    },
                  ),
                  CustomInputbuttom(
                    title: '4',
                    onTap: () {
                      addPin('1');
                    },
                  ),
                  CustomInputbuttom(
                    title: '5',
                    onTap: () {
                      addPin('1');
                    },
                  ),
                  CustomInputbuttom(
                    title: '6',
                    onTap: () {
                      addPin('1');
                    },
                  ),
                  CustomInputbuttom(
                    title: '7',
                    onTap: () {
                      addPin('1');
                    },
                  ),
                  CustomInputbuttom(
                    title: '8',
                    onTap: () {
                      addPin('1');
                    },
                  ),
                  CustomInputbuttom(
                    title: '9',
                    onTap: () {
                      addPin('1');
                    },
                  ),
                  // Untuk membuat tempat kolom yang kosong
                  const SizedBox(
                    height: 60,
                    width: 60,
                  ),
                  const CustomInputbuttom(
                    title: '0',
                  ),
                  GestureDetector(
                    onTap: () {
                      deletePin();
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: numberBackgroundColor,
                      ),
                      //  membuat tombol hapus atau arrow back
                      child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
