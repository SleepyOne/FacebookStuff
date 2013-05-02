
package facebook;

import java.util.Date;


public class WallPost implements Comparable<WallPost>
{

  private String text, ID, postTarget;
  private User author;
  private Date date;
  private static int numPosts = 0;


  public WallPost(User author, String text, String ID, String postTarget)
  {
    this.author = author;
    this.text = text;
    this.ID = ID;
    this.postTarget = postTarget;
    date = new Date();
  }


  public static int getNumPosts()
  {
    return numPosts;
  }


  public String getID()
  {
    return ID;
  }


  public User getAuthor()
  {
    return author;
  }


  public Date getDate()
  {
    return date;
  }
	
		
  public String getText()
  {
    return text;
  }


  public int compareTo(WallPost post)
  {
    return getDate().compareTo(post.getDate());
  }

}


