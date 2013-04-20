
package facebook;


public class WallPost
{

  private String author, date, text;


  public WallPost(String author, String text)
  {
    this.author = author;
    this.text = text;
  }


  public String getAuthor()
  {
    return author;
  }


  public String getDate()
  {
    return date;
  }
	
		
  public String getText()
  {
    return text;
  }


  public int compareTo(WallPost post)
  {
    return 0;
  }

}


