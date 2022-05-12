import java.util.*;

class Main {
  public static void main(String[] args) {
    Scanner scan = new Scanner(System.in);
    StringBuilder displayBuilder = new StringBuilder();
    String[] words = {"ab", "abo", "aged", "acorn", "by", "bam", "bind", "bacon", "cob", "cage", "campo", "calque", "do", "dub", "date", "death", "foy", "funk", "farls", "fable"};
    int rand = new Random().nextInt(words.length);
    String display = "";
    String wordToGuess = words[rand];
    char guess = ' ';
    int incorrect = 0;
    int indexOfGuess;
    Boolean run = true;

    // Populate the display of characters
    for(int i=0; i<wordToGuess.length(); i++) {
      if(Character.isLetter(wordToGuess.charAt(i))) {
        displayBuilder.append(display).append("_");
        }
    }
    System.out.println("Welcome to hangman!");
    while(run){
      drawHangman(incorrect);
      System.out.println("Display: " + displayBuilder);
      System.out.println("incorect: " + incorrect);
      System.out.println("Your Guess:");
      guess = scan.next().charAt(0);
      if(wordToGuess.contains(String.valueOf(guess))){
        indexOfGuess = wordToGuess.indexOf(guess);
        displayBuilder.setCharAt(indexOfGuess, guess);
        if(wordToGuess.equals(displayBuilder.toString())){
          drawHangman(incorrect);
          System.out.println("Display: " + displayBuilder);
          System.out.println("incorect: " + incorrect);
          System.out.println("You win!");
          incorrect = 6;
        }
      } else {
        incorrect ++;
        if(incorrect == 6){
          drawHangman(incorrect);
          System.out.println("Display: " + displayBuilder);
          System.out.println("incorect: " + incorrect);
          System.out.println("Game Over. word was: " + wordToGuess);
          System.out.println("Would you like to go again? y/n:");
          
        }
      }
    }
  }

  //meathod for rendering ascii art
  public static void drawHangman(int attempt){
    switch (attempt) {
      case 0:
        System.out.println("┌─────────┐");
        System.out.println("│");
        System.out.println("│");
        System.out.println("│");
        System.out.println("|");
        System.out.println("├─────────┐");
        break;
      case 1:
        System.out.println("┌─────────┐");
        System.out.println("│         0");
        System.out.println("│");
        System.out.println("│");
        System.out.println("|");
        System.out.println("├─────────┐");
        break;

      case 2:
        System.out.println("┌─────────┐");
        System.out.println("│         0");
        System.out.println("│         |");
        System.out.println("│         |");
        System.out.println("|");
        System.out.println("├─────────┐");
        break;
      case 3:
        System.out.println("┌─────────┐");
        System.out.println("│         0");
        System.out.println("│         |┐");
        System.out.println("│         |");
        System.out.println("|");
        System.out.println("├─────────┐");
        break;
      case 4:
        System.out.println("┌─────────┐");
        System.out.println("│         0");
        System.out.println("│        ┌|┐");
        System.out.println("│         |");
        System.out.println("|");
        System.out.println("├─────────┐");
        break;
      case 5:
        System.out.println("┌─────────┐");
        System.out.println("│         0");
        System.out.println("│        ┌|┐");
        System.out.println("│         |");
        System.out.println("│          ┐");
        System.out.println("├─────────┐");
        break;
      case 6:
        System.out.println("┌─────────┐");
        System.out.println("│         0");
        System.out.println("│        ┌|┐");
        System.out.println("│         |");
        System.out.println("│        ┌ ┐");
        System.out.println("├─────────┐");
        break;
    }
  }
}
