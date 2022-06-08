library my_prj.globals;

//FOOD SPOTS ==================================================================
//Reaction Vars

bool hasLikedAEFEUP = false;
bool hasDislikedAEFEUP = false;
int countAEFEUP = 0;

bool hasLikedBarBiblioteca = false;
bool hasDislikedBarBiblioteca = false;
int countBarBiblioteca = 0;

bool hasLikedCantina = false;
bool hasDislikedCantina = false;
int countCantina = 0;

bool hasLikedBarMinas = false;
bool hasDislikedBarMinas = false;
int countBarMinas = 0;

bool hasLikedRestINEGI = false;
bool hasDislikedRestINEGI = false;
int countRestINEGI = 0;

//THEORETICAL CLASSES =======================================================================
  //formato de uma aula --> [<Dia da Semana>, <Hora de Início>,<Hora de Fim>,<Sala>]
List<List<String>> classesSO = [["Monday","10h30","12h30","B001"],["Tuesday","16h00","18h00","B003"],["Friday","08h00","10h00","B112"]];
List<List<String>> classesLCOM = [["Monday","10h30","12h30","B001"],["Tuesday","16h00","18h00","B003"],["Friday","08h00","10h00","B112"]];
List<List<String>> classesLTW = [["Monday","10h30","12h30","B001"],["Tuesday","16h00","18h00","B003"],["Friday","08h00","10h00","B112"]];
List<List<String>> classesDA = [["Monday","10h30","12h30","B001"],["Tuesday","16h00","18h00","B003"],["Friday","08h00","10h00","B112"]];
List<List<String>> classesES = [["Monday","10h30","12h30","B001"],["Tuesday","16h00","18h00","B003"],["Friday","08h00","10h00","B112"]];
  //para adicionar + cadeiras, adicionar + listas, atualizar enums e acrescentar opção nas switches em class.dart