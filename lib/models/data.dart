class Data{
  String? nombre;
  bool? gustoFlutter; // controlar el widget switch
  int? califFlutter;
  String? movilDev;
  bool? web;
  bool? emulador;
  bool? smartphone;

  Data({required String nomb, 
        required bool gusto, 
        required int calif, 
        required String movil, 
        required bool nav, 
        required bool emul, 
        required bool phone }) {
    nombre= nomb;
    gustoFlutter= gusto;
    califFlutter = calif;
    movilDev =  movil;
    web = nav;
    emulador = emul;
    smartphone = phone;
  }
}
