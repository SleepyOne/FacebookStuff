
package facebook;
import java.util.ArrayList;
import java.io.*;


public class Wall
{

  private ArrayList<WallPost> wallPosts;
  private String owner;


  public Wall (String owner)
  {
    this.owner = owner;
    wallPosts = new ArrayList<WallPost>();

    saveWall();
  }


  public ArrayList<WallPost> getWallPosts ()
  {
    return wallPosts;
  }


  public void addWallPost (WallPost post)
  {
    for (int i = 0; i < wallPosts.size(); i++)
    {
      if (post.getText().equals(wallPosts.get(i).getText()) && post.getAuthor() == wallPosts.get(i).getAuthor())
      {
        return;
      }
    }
    wallPosts.add(post);

    saveWall();
  }


  public void removeWallPost (WallPost post)
  {
    if (wallPosts.contains(post) == true)
    {
      wallPosts.remove(post);
    }
    saveWall();
  }


  public void saveWall()
  {
    try
    {
      File file = new File(this.owner + ".wall");
      file.createNewFile();

      FileOutputStream outFile = new FileOutputStream(this.owner + ".wall" );
      ObjectOutputStream output = new ObjectOutputStream(outFile);

      output.writeObject(this);
      output.close();
      outFile.close();
    }
    catch (IOException i)
    {
      i.printStackTrace();
      return;
    }
  }
}


