import 'package:first_day/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';


class FormRegister extends StatefulWidget {
  const FormRegister({super.key});

  @override
  State<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  String? _selectedCountry;
  int? _selectedAge;
  List<int> ages = List.generate(100, (index) => index + 1); // Tạo danh sách tuổi từ 1 đến 100

  @override
  Widget build(BuildContext context) {
    final TextEditingController _dateController = TextEditingController();
    DateTime? dob;
    return  ListView(
      children: [
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(

            style:  GoogleFonts.nunitoSans(
          fontWeight: FontWeight.bold,
          color: Colors.black),
            decoration: const InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,

                )
            ),

          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 0.5,
          color: color_primary,
        ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
      children: [
      Expanded(
      child: TextFormField(
      controller: _dateController,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
      contentPadding:
      const EdgeInsets.symmetric(vertical: 15),
      hintText: "Select your date",

      // hintStyle: GoogleFonts.nunitoSans(
      //     fontWeight: FontWeight.bold,
      //     color: Colors.black),
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none)),
      ),
      ),
      IconButton(onPressed: ()async{
      dob =  await showDatePicker(context: context, initialDate: DateTime(2005,1,1), firstDate: DateTime(1950,1,1), lastDate: DateTime.now().subtract(const Duration(days: 18*365)),);
      if(dob!=null){
      _dateController.text = DateFormat('dd/MM/yyyy').format(dob!);
      }

      }, icon: const Icon(Icons.calendar_month_outlined,color: Colors.purple,))

      ],),
    ),
Container(
  width: MediaQuery.of(context).size.width,
  height: 0.5,
  color: color_primary,
),
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.bold,
                color: Colors.black),
            decoration: const InputDecoration(
                labelText: 'Phone Number',

                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                )
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 0.5,
          color: color_primary,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButtonFormField<String>(
            value: _selectedCountry,
            hint: const Text('Country'),
            items: const [
              DropdownMenuItem<String>(
                value: 'VN',
                child: Text('Việt Nam'),
              ),
              DropdownMenuItem<String>(
                value: 'US',
                child: Text('Hoa Kỳ'),
              ),
              // Thêm các quốc gia khác
            ],
            onChanged: (value) {
              setState(() {
                _selectedCountry = value;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButtonFormField<int>(
            menuMaxHeight: MediaQuery.of(context).size.height/4,
            value: _selectedAge,
            hint: const Text('Age'),
            items:  [
              for(int age in ages)
                DropdownMenuItem<int>(
                  value: age,
                  child: Text('$age'),
                ),
            ],
            onChanged: (value) {
              setState(() {
                _selectedAge = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
