void draw() {

  if( poema == true) {
   if( millis() > time ){
    time = millis() + 4000;
    poema();
   }
   if( millis() > time2 ){
    time2 = millis() + 4000;
    background(0);
   }   
  }
   
    // definir variáveis que pegam uma string aleatória dentro da lista de poema()
    Sx = int(random(0, sujeito.length)); // Sujeito
    Ax = int(random(0, adjetivo.length)); // Adjetivo
    Vx = int(random(0, verbo.length)); // Verbo 
    Advx = int(random(0, adverbio.length));
    Ox = int(random(0, objeto.length)); // Objeto





}
