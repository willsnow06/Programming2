LetterSquare[] row1 = new LetterSquare[5];
LetterSquare[] row2 = new LetterSquare[5];
LetterSquare[] row3 = new LetterSquare[5];
LetterSquare[] row4 = new LetterSquare[5];
LetterSquare[] row5 = new LetterSquare[5];
LetterSquare[] row6 = new LetterSquare[5];
LetterSquare[] row;
int turn;
TextBox textBox;
String l1;
String l2;
String l3;
String l4;
String l5;
String word;
String[] lines;
String letter;
boolean okay;


void setup() {
  size(500, 700);
  okay = true;
  turn = 0;
  textBox = new TextBox(0, 700, "     ");
  lines = loadStrings("Words.txt");
  word = lines[int(random(0, lines.length))];
  l1 = Character.toString(word.charAt(0));
  l2 = Character.toString(word.charAt(1));
  l3 = Character.toString(word.charAt(2));
  l4 = Character.toString(word.charAt(3));
  l5 = Character.toString(word.charAt(4));

  //row 1
  row1[0] = new LetterSquare(0, 0, 100, 100, 3, "", l1, true);
  row1[1] = new LetterSquare(100, 0, 100, 100, 3, "", l2, true);
  row1[2] = new LetterSquare(200, 0, 100, 100, 3, "", l3, true);
  row1[3] = new LetterSquare(300, 0, 100, 100, 3, "", l4, true);
  row1[4] = new LetterSquare(400, 0, 100, 100, 3, "", l5, true);

  //row 2
  row2[0] = new LetterSquare(0, 100, 100, 100, 3, "", l1, true);
  row2[1] = new LetterSquare(100, 100, 100, 100, 3, "", l2, true);
  row2[2] = new LetterSquare(200, 100, 100, 100, 3, "", l3, true);
  row2[3] = new LetterSquare(300, 100, 100, 100, 3, "", l4, true);
  row2[4] = new LetterSquare(400, 100, 100, 100, 3, "", l5, true);

  //row 3
  row3[0] = new LetterSquare(0, 200, 100, 100, 3, "", l1, true);
  row3[1] = new LetterSquare(100, 200, 100, 100, 3, "", l2, true);
  row3[2] = new LetterSquare(200, 200, 100, 100, 3, "", l3, true);
  row3[3] = new LetterSquare(300, 200, 100, 100, 3, "", l4, true);
  row3[4] = new LetterSquare(400, 200, 100, 100, 3, "", l5, true);

  //row 4
  row4[0] = new LetterSquare(0, 300, 100, 100, 3, "", l1, true);
  row4[1] = new LetterSquare(100, 300, 100, 100, 3, "", l2, true);
  row4[2] = new LetterSquare(200, 300, 100, 100, 3, "", l3, true);
  row4[3] = new LetterSquare(300, 300, 100, 100, 3, "", l4, true);
  row4[4] = new LetterSquare(400, 300, 100, 100, 3, "", l5, true);

  //row 5
  row5[0] = new LetterSquare(0, 400, 100, 100, 3, "", l1, true);
  row5[1] = new LetterSquare(100, 400, 100, 100, 3, "", l2, true);
  row5[2] = new LetterSquare(200, 400, 100, 100, 3, "", l3, true);
  row5[3] = new LetterSquare(300, 400, 100, 100, 3, "", l4, true);
  row5[4] = new LetterSquare(400, 400, 100, 100, 3, "", l5, true);

  //row 6
  row6[0] = new LetterSquare(0, 500, 100, 100, 3, "", l1, true);
  row6[1] = new LetterSquare(100, 500, 100, 100, 3, "", l2, true);
  row6[2] = new LetterSquare(200, 500, 100, 100, 3, "", l3, true);
  row6[3] = new LetterSquare(300, 500, 100, 100, 3, "", l4, true);
  row6[4] = new LetterSquare(400, 500, 100, 100, 3, "", l5, true);
}

void draw() {
  background(0);
  for (int i = 0; i < row1.length; i++) {
    row1[i].hover();
    row1[i].display();

    row2[i].hover();
    row2[i].display();

    row3[i].hover();
    row3[i].display();

    row4[i].hover();
    row4[i].display();

    row5[i].hover();
    row5[i].display();

    row6[i].hover();
    row6[i].display();
  }
  textBox.display();
    keyReleased();
}

void keyReleased() {
  switch(turn) {
  case 0:
    row = row1;
    break;

  case 1:
    row = row2;
    break;

  case 2:
    row = row3;
    break;

  case 3:
    row = row4;
    break;
    
   case 4:
     row = row5;
     break;
     
   case 5:
     row = row6;
     break;
  }
  for (int i = 0; i < row1.length; i++) {
    if (row[i].c1 != #23FF03 && keyCode >= 65) {
      row[i].val = Character.toString(key);
    }
    if (row[i].val.equals(row[i].gText)) {
      row[i].c1 = #23FF03;
    } else if (row[i].val.equals(l1) || row[i].val.equals(l2) || row[i].val.equals(l3) || row[i].val.equals(l4) || row[i].val.equals(l5)) {
      row[i].c1 = #F5FA00;
    } else {
      row[i].c1 = #CBC5C5;
    }
    if(key == ENTER && okay){
      switch(turn){
      case 0:
        turn = 1;
        break;
      case 1:
        turn = 2;
        break;
      case 2:
        turn = 3;
        break;
      case 3:
        turn = 4;
        break;
       case 4:
        turn = 5;
        break;
       case 5:
         turn = 0;
         break;
      
      }
      okay = false;
    }
  }
}
