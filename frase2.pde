// --------------------------------------------------------
// ---------------------- > SEGUNDA FRASE < --------------
// --------------------------------------------------------

void poema2() {

  //background(0);
  textFont(f);

   //for (int y = L2; y < height-L1; y += fontSize*3) {

  Org2 = int(random(0, 1));
  Org22 = int(random(0, 1));
  nao = int(random(0, 7));

  Sx2 = int(random(0, objeto.length)); 

  pos2[0] = 20;

  S2 = objeto[Sx2];

  E_s2 = textWidth(S2);

  if (Org2 == 1) {

    Cj = int(random(0, conjS.length));
    Vx2 = int(random(0, verboS.length));

    C = conjS[Cj];
    V2 = verboS[Vx2];
  } else { 

    Cj = int(random(0, conjD.length));
    Vx2 = int(random(0, verboD.length));

    C = conjD[Cj];
    V2 = verboD[Vx2];
  }

  if (nao == 4) {
    V2 = " não" + V2;
  }

  E_c = textWidth(C);
  E_v2 = textWidth(V2);
  E_s2 = textWidth(S2); 

  pos2[1] = pos2[0]+E_c;
  pos2[2] = pos2[1]+E_v2;

  posC = 0; // Posição da Conjunção
  posV2 = 1; // Posição do verbo
  posS2 = 2; // Posição do "sujeito" 

  text(C, pos2[posC], L2);   //  display da Conjunção
  text(S2, pos2[posS2], L2); //  display do "Sujeito"
  text(V2, pos2[posV2], L2); //  display do verbo
  
  poema3();
}

//}
