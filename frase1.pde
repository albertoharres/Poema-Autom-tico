// --------------------------------------------------------
// ---------------------- > PRIMEIRA FRASE < --------------
// --------------------------------------------------------

void poema() {

  background(0);
  textFont(f); // Fonte

  //for (int y = L1; y < height-L1; y += fontSize*3) {  // Função para ocorrer simultâneamente em várias linhas

    Org = int(random(0, 3)); // Valor randômico que define organização
    nao = int(random(0, 7)); // Valor randômico para negação do verbo
    rand = int(random(0, 10)); 

    // definir variáveis que pegam uma string aleatória dentro da lista 
    Sx = int(random(0, sujeito.length)); // Sujeito
    Ax = int(random(0, adjetivo.length)); // Adjetivo
    Vx = int(random(0, verbo.length)); // Verbo 
    Advx = int(random(0, adverbio.length));
    Ox = int(random(0, objeto.length)); // Objeto

    println(Sx); 
    println(Ax); 
    println(Vx);

    S = sujeito[Sx]; // Definição de String para o sujeito 
    adj = adjetivo[Ax]; // Definição de String para o adjetivo
    V = verbo[Vx];
    O = objeto[Ox];
    Adv = adverbio[Advx];

    if (Sx <= 6) { // As primeiras 6 palavras no substantivo são femininas,
      Fem = true;  // ativam assim a função que fará os artigos
    } else {       // e a desinência de gênero. 
      Fem = false; //
    }

    //text(sujeito[int(random(0, sujeito.length))],20, 50);

    pos[0] = 20; // valor X inicial de todas as linhas 

    if (Fem == true) {
      S = " a"+ S; // Artigo feminino do sujeito 
      if (Ax > 4) {
        adj = adj +"a"; // desinência feminina do adjetivo
      }
    } else {
      S = " o" + S; // Artigo masculino do sujeito + palavra 
      if (Ax > 4) {
        adj = adj +"o"; // desinencia masculina do adjetivo
      }
    }

    if (rand > 5) { // Definir uma probabilidade para a função do adjetivo
      adj = "";
    }

    if (rand < 3) {
      if (Fem == true) {
        S = " a";
      } else {
        S = " o";
      }
    }
    E_s = textWidth(S);   // gerar valor do tamanho X do elemento S
    E_ad = textWidth(adj);// " " " " " " " "" " " " " "" " " " "  Adj
    E_v = textWidth(V);   // " " " " " " " " " " "" " " " " " " "  V

      if (Org > 0) {  // 1a Organização da frase

      if ((nao == 4) || (Ox == 15)) {  // Implemantação da partícula "não" com uma probabilidade de 1 para 7. 
        V = " não" + V; // particula não é implementada antes do verbo.
      }

      E_v = textWidth(V);

      pos[1] = pos[0]+E_s; // define que o segundo elemento vem depois do primeiro e etc...
      pos[2] = pos[1]+E_ad;
      pos[3]= pos[2]+E_v;

      posS = 0;  // define a ordem de cada elemento dentro da frase. 
      posAdj = 1;
      posV = 2;
      posO = 3;

      if (Vx <= 4) {
        text(O, pos[posO], L1);
      }
    }

    if (Org == 0) { // 2a Organização da frase

      V = V + ",";

      E_v = textWidth(V);

      pos[1] = pos[0]+E_v;
      pos[2] = pos[1]+E_s;

      posS = 1;
      posAdj = 2;
      posV = 0;
    }

    text(S, pos[posS], L1);    // display Sujeito
    text(adj, pos[posAdj], L1); // display Adjetivo
    text(V, pos[posV], L1);     // display Verbo
      
      
      
    poema2();      
  }
//}

