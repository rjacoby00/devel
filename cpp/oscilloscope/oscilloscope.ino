void setup() {

}

void loop() {
    
    for(int i = 0; i < 256; i++) {
        analogWrite(A0, i);
    }
    for(int i = 0; i < 256; i++) {
        analogWrite(A1, i);
    }
    for(int i = 255; i >= 0; i--) {
        analogWrite(A0, i);
    }
    for(int i = 255; i >= 0; i--) {
        analogWrite(A1, i);
    }
    
   /*
   for(int i = 0; i < 256; i++) {
       analogWrite(A0, i); 
       for(int j = 0; j < 256; j++) {
           analogWrite(A1, j);
       }
   }
   */
}