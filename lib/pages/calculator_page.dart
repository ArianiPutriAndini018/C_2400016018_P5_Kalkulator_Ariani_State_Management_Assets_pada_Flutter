import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/calculator_button.dart';


class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});


  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}


class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController angkaPertamaController = TextEditingController();
  final TextEditingController angkaKeduaController = TextEditingController();


  String hasil = 'Hasil akan tampil di sini';
  bool isError = false;


  @override
  void dispose() {
    angkaPertamaController.dispose();
    angkaKeduaController.dispose();
    super.dispose();
  }


  void hitung(String operasi) {
    final String inputPertama = angkaPertamaController.text.trim();
    final String inputKedua = angkaKeduaController.text.trim();


    if (inputPertama.isEmpty || inputKedua.isEmpty) {
      setState(() {
        hasil = 'Input tidak boleh kosong';
        isError = true;
      });
      return;
    }


    final double? angkaPertama = double.tryParse(
      inputPertama.replaceAll(',', '.'),
    );
    final double? angkaKedua = double.tryParse(inputKedua.replaceAll(',', '.'));


    if (angkaPertama == null || angkaKedua == null) {
      setState(() {
        hasil = 'Masukkan angka yang valid';
        isError = true;
      });
      return;
    }


    double hasilHitung = 0;


    if (operasi == '+') {
      hasilHitung = angkaPertama + angkaKedua;
    } else if (operasi == '-') {
      hasilHitung = angkaPertama - angkaKedua;
    } else if (operasi == '×') {
      hasilHitung = angkaPertama * angkaKedua;
    } else if (operasi == '÷') {
      if (angkaKedua == 0) {
        setState(() {
          hasil = 'Tidak bisa membagi dengan nol';
          isError = true;
        });
        return;
      }


      hasilHitung = angkaPertama / angkaKedua;
    }


    setState(() {
      hasil = 'Hasil: ${formatAngka(hasilHitung)}';
      isError = false;
    });
  }


  String formatAngka(double value) {
    if (value == value.roundToDouble()) {
      return value.toInt().toString();
    }


    return value.toStringAsFixed(2);
  }


  InputDecoration inputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      filled: true,
      fillColor: AppTheme.butter,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.w700,
        color: AppTheme.black,
      ),
      enabledBorder: AppTheme.inputBorder(),
      focusedBorder: AppTheme.inputBorder(),
      errorBorder: AppTheme.inputBorder(),
      focusedErrorBorder: AppTheme.inputBorder(),
    );
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(22),
      child: Column(
        children: [
          const SizedBox(height: 20),


          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: AppTheme.pink,
              borderRadius: BorderRadius.circular(28),
              border: Border.all(color: AppTheme.black, width: 3),
              boxShadow: [AppTheme.brutalShadow(x: 8, y: 8)],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Kalkulator Sederhana',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                ),


                const SizedBox(height: 8),


                const Text(
                  'Masukkan dua angka, lalu pilih operasi.',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),


                const SizedBox(height: 22),


                TextField(
                  controller: angkaPertamaController,
                  keyboardType: TextInputType.number,
                  decoration: inputDecoration('Angka pertama'),
                ),


                const SizedBox(height: 16),


                TextField(
                  controller: angkaKeduaController,
                  keyboardType: TextInputType.number,
                  decoration: inputDecoration('Angka kedua'),
                ),


                const SizedBox(height: 24),


                Row(
                  children: [
                    CalculatorButton(
                      label: '+',
                      color: AppTheme.orange,
                      onTap: () => hitung('+'),
                    ),
                    CalculatorButton(
                      label: '-',
                      color: AppTheme.green,
                      onTap: () => hitung('-'),
                    ),
                  ],
                ),


                const SizedBox(height: 14),


                Row(
                  children: [
                    CalculatorButton(
                      label: '×',
                      color: AppTheme.blue,
                      onTap: () => hitung('×'),
                    ),
                    CalculatorButton(
                      label: '÷',
                      color: AppTheme.butter,
                      onTap: () => hitung('÷'),
                    ),
                  ],
                ),


                const SizedBox(height: 28),


                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: isError ? const Color(0xFFFFB4B4) : AppTheme.butter,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: AppTheme.black, width: 2.5),
                  ),
                  child: Text(
                    hasil,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}