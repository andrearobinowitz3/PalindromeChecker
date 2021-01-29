public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public String removePunctuation (String word) {
  
  String sAnswer = "";
  for( int i =0; i<word.length(); i++){
   if( Character.isLetter(word.charAt(i))){
    sAnswer = sAnswer + word.charAt(i); 
   }
  }
  return sAnswer;
  
 
}

public boolean palindrome(String word)
{
  word = removePunctuation(word);
  if( word.equalsIgnoreCase(reverse(word))){
     return true;
    }
   else{
  return false;
   }
}
public String reverse(String str)
{
    String sNew = new String();
    sNew = "";
    //System.out.println("Reversing "+str+".");
    for (int i = str.length(); i>0; i--){
     //System.out.println("look at i = "+i+" "+sNew);
     sNew = sNew + str.substring(i-1,i); 
      }
    return sNew;
}
