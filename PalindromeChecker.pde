public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
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
  word=no(word);
  word=not(word);
 if(word.equals(reverse(word)))
  return true;

else
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i=str.length()-1;i>=0;i--){
    sNew = sNew + str.substring(i,i+1);
  }  
    return sNew;
}
public String no(String so){
    String s= new String();
  for(int i=0;i<so.length();i++){
    if(Character.isLetter(so.charAt(i))==true){
      s = s + so.charAt(i);
    }
  }
  return s;
}
public String not(String cap){
  String s = new String();
  
    s = s+cap.toLowerCase();
  
  return s;
}