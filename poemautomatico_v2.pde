////////////////////////////////////////////////////
///////////////// G R A M Á T I C A ////////////////
////////////////////////////////////////////////////

boolean Fem; // bollean para desinência de gênero
boolean Fem2;
boolean poema = false; 

// Definição de Strings para primeira Frase.
String S, adj, V, O, Adv;
// Definição de Strings para segunda Frase.
String C, V2, S2;
// Definição de Strings para terceira Frase.
String seja, Obj2, E;

PFont f;
int fontSize = 30;
// valor Y de cada linha
int L1 = 50;
int L2 = L1 + fontSize;
int L3 = L2 + fontSize;

float E_s, E_art, E_ad, E_v, E_c, E_s2, E_v2, E_obj2, E_e, E_seja; // espaço de cada palavra
int Sx, Vx, Ax, Cj, Vx2, Sx2, obj2, Advx, Ox; // número dentro de cada lista de String

int Org = 0; // variável randômica que define o tipo de estrutura da frase
int Org2 = 1; //  tipo de segunda oração, alterando o verbo também.
int Org22 = 1; 
int nao, rand; // 

int time;
int time2 = 4000;

// numero para posição de cada elemento na frase 
int posS, posV, posAdj, posC, posS2, posV2, posO;

// possíveis posições dentro de cada frase
float[] pos = new float[4];  
float[] pos2 = new float[3];
float[] pos3 = new float[3];

String Art;

void setup() {

  size(800, 600);
  background(0); 

  f = createFont("Helvetica", fontSize);

  poema();
  //poema2();
  //poema3();
}

void keyPressed() {

  /*if (key == ' ') {
   if (poema == true) {
   poema = false;
   } else { 
   poema = true;
   }
   }*/
  if (key == 'a') {
    poema();
    //poema2();
    //poema3();
    //saveFrame();
  }
  if (key == 's') {
    saveFrame();
  }
}

