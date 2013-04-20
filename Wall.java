
package facebook;
import java.util.ArrayList;


public class Wall
{

  private ArrayList<WallPost> wallPosts;


  public Wall ()
  {
    wallPosts = new ArrayList<WallPost>();
  }


  public ArrayList<WallPost> getWallPosts ()
  {
    return wallPosts;
  }


  public void addWallPost (WallPost post)
  {
    wallPosts.add(post);
  }


  public void removeWallPost (WallPost post)
  {

  }

  private void save ()
  {

  }

  private void load ()
  {

  }

}


