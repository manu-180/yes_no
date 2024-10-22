
enum QuienEs { ella, yo }

class Mensaje {
   final String text;
   final String? url;
   final QuienEs quienEs;

  Mensaje({required this.text, this.url, required this.quienEs});
}