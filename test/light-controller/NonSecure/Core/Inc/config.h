int sensitiveAddr;
unsigned char memory[1024];
unsigned char bitmap[10000];
unsigned int * global_ebp;
unsigned int * global_esp;
unsigned int cfi_trigger_count;
unsigned int dfi_trigger_count;

void config_memory();
void config_dwt();
void tagFunction(int id);

// void config_init(){
//     memory [0] = 0;
//     global_ebp=&memory[0];
//     global_esp=&memory[4];
//     sensitiveAddr = 0;
// }