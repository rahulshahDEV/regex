void main() {
  final String text_to_search = """
abcdefghijklmnopqrstuvwxyz
ABCDEFGHIJKLMNOPQRSTUVWXYZ
1234567890

Ha HaHa

logisparktech.com

321-555-4321
123.444.1234
456*697*5566
800-123-234
900-234-123

PrayushShrestha@gmail.com
ayushMaharjan123@hotmail.com
ramShrestha@yahoo.com
prayush.shrestha@logisparktech.org
prayush-321-shrestha@deerwalk.edu.np
prayush1234@my-work.net






Mr Rohit
Mr. Raunak
Ms. Anushka
Mrs. Nisha
Mr. T


cat
mat
pat
bat

""";
  final checkAT = RegExp(r'at$');
  final checkMail = RegExp(r'[a-zA-Z0-9\.\-\_]+[@][-\a-z]+[\.][a-z]{2,3}');

  final numCheck =
      RegExp(r'[0-9]{3}[-\ *\ .\]{1}[0-9]{3}[-\ *\ .\]{1}[0-9]{4}');
  
  final mynumCheck =  RegExp(r'\d\d\d [- * .]\ \d\d\d [- * .]\ \d\d\d');

  final List<String> filteredAT = text_to_search
      .split('\n')
      .where((line) => checkAT.hasMatch(line))
      .toList();

  final List<String> filteredMail = text_to_search
      .split('\n')
      .where((line) => checkMail.hasMatch(line))
      .toList();
  final List<String> numList = text_to_search
      .split('\n')
      .where((line) => mynumCheck.hasMatch(line))
      .toList();

  print(filteredAT);
  print(filteredMail);
  print(numList);
//   print(filteredPhone);
}
