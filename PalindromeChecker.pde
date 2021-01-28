public void setup(){
  String lines[] = {"test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!", "Stanley", "Stanleyelnats"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++){
    if(reverse(lines[i])==true){
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else{
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

/*public String palindrome(String word){
  String sNew = new String();
    for (int i = word.length(); i > 0; i--){
      sNew = sNew + word.charAt(i-1);
    }
    return sNew;
}*/


public boolean reverse(String str){
  String fW = new String();
  for (int i = 0; i < str.length(); i++){
    if (Character.isLetter(str.charAt(i))){
      fW = fW + str.substring(i, i+1);
    }
  }
  String test = new String();
  for (int i = fW.length(); i > 0; i--){
    test = test + fW.charAt(i-1);
  }

  if (test.toLowerCase().equals(fW.toLowerCase())){
    return true;
  }
  return false;
}

