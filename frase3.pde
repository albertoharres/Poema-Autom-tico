// --------------------------------------------------------
// ---------------------- > TERCEIRA FRASE < --------------
// --------------------------------------------------------

void poema3() {

  textFont(f);

  // for (int y = L3; y < height-L1; y += fontSize*3) {

  nao = int(random(0, 7)); // Valor randômico para negação do verbo
  pos3[0] = 20;

  // definir variáveis que pegam uma string aleatória dentro da lista 
  obj2 = int(random(0, objeto2.length)); // Objeto

  Obj2 = objeto2[obj2];
  E = conjS[0];

  if (C == conjD[1]) {    
    E = conjD[1];
  }


  if (nao >= 4) {
    seja = " não seja";
  } else {
    seja = " seja";
  }

  if (Fem == false) {

    if (obj2 == 5) {
      Obj2 = " um bom filho";
    } 
    if (obj2 == 6) {
      Obj2 = " um sonhador";
    }
  }

  E_e = textWidth(E);
  E_obj2 = textWidth(Obj2);
  E_seja= textWidth(seja); 

  pos3[1] = pos3[0]+E_e;
  pos3[2] = pos3[1]+E_seja;

  text(E, pos3[0], L3);   //  display da Conjunção
  text(seja, pos3[1], L3); //  display do "Sujeito"
  text(Obj2, pos3[2], L3); //  display do verbo
}
//}

