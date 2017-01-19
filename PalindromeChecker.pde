public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  String bob[] = new String[lines.length];
  for(int i=0;i<bob.length;i++){
    bob[i]="";
  }
  for(int i=0;i<bob.length;i++){
    for(int a=0;a<lines[i].length();a++){
      if(Character.isLetter(lines[i].charAt(a))){
        bob[i] += lines[i].charAt(a);
      }
    }
  }
  for(int i=0;i<bob.length;i++){
    lines[i] = bob[i];
  }
  println("there are " + lines.length + " lines");
  
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String sNew = new String();
    for(int i = word.length()-1;i>=0;i--){
      sNew = sNew + word.charAt(i);
    }
    if(sNew.equalsIgnoreCase(word)==true){
      return true;
    }
  
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1;i>=0;i--){
      sNew = sNew + str.charAt(i);
    }
    return sNew;
}


