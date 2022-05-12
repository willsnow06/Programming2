class LetterSquare{
  //Member variables
  int x, y, w, h, m;
  String val, gText;
  boolean hover, isNumber;
  color c1, c2;
  
  // Constructor
  LetterSquare(int tempX, int tempY, int tempW, int tempH,int tempM, String text, String guessText, boolean isNumber){
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    m = tempM;
    val= text;
    gText = guessText;
    hover = false;
    c1 = #CBC5C5;
    c2 = #898484;
    this.isNumber = isNumber;
  }
  
  //Display the button
  void display() {
    if(isNumber == true){
      if(hover) {
      fill(c2);
    } else{
      fill(c1);
    }
    if(hover && mousePressed){
      fill(c1);
    }
    //rectMode(CENTER);
    rect(x, y, w, h);
    fill(0);
    textAlign(CENTER);
    textSize(32);
    text(val, x+w/2, y + h/2);
    } else { //non number buttons
      if(hover) {
      fill(c2);
    } else{
      fill(c1);
    }
    if(hover && mousePressed){
      fill(c1);
    }
    //rectMode(CENTER);
    rect(x, y, w, h);
    fill(0);
    textAlign(CENTER);
    textSize(32);
    text(val, x+w/2, y + h/2);
    }
    
    if (hover){
      fill(c1);
    }else{
      fill(c2);
    }
    quad(x, y, x+w, y, x+w-m, y+m, x+ m, y+m);
    quad(x, y, x+m, y+m, x+m, y+h-m, x, y+h);
    quad(x+w, y, x+w, y+h, x+w-m, y+h-m, x+w-m, y+m);
    quad(x, y+h, x+w, y+h, x+w-m, y+h-m, x+m,y+h-m);
  }
  
  //edge detection
  void hover(){
    hover = false;
  }
}
