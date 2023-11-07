import 'package:http/http.dart' as http;

void main() async {
  try {
    http.Response coffeeList = await getCoffee();
    print(coffeeList.body);
  } catch (e) {
    print(e.toString());
  }
}

Future<http.Response> getCoffee() async {
  String url = 'https://coffee.alexflipnote.dev/random.json';
  http.Response response = await http.get(Uri.parse(url));
  return response;
}
