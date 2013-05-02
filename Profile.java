
package facebook;
import java.util.ArrayList;
import java.io.*;


public class Profile
{

  private Wall wall;
  private ArrayList<String> hobbies;
  private ArrayList<User> friendRequests;
  private User owner;
  private String picture;


  Profile (User owner)
  {
    this.owner = owner;
    wall = new Wall(owner.getEmail());

    hobbies = new ArrayList<String>();
    friendRequests = new ArrayList<User>();

    picture = null;

    saveProfile();
  }


  public String getPicture()
  {
    return picture;
  }


  public void setPicture(String name)
  {
    picture = name;

    saveProfile();
  }


  public ArrayList<String> getHobbies ()
  {
    return hobbies;
  }


  public void addHobby (String hobby)
  {
    if (hobbies.contains(hobby) == false)
    {
      hobbies.add(hobby);
    }
    saveProfile();
  }


  public Wall getWall ()
  {
    return wall;
  }


  public void addFriendRequest (User user)
  {
    if (friendRequests.contains(user) == false)
    {
      friendRequests.add(user);
    }
    saveProfile();
  }


  public void removeFriendRequest (User user)
  {
    if (friendRequests.contains(user) == true)
    {
      friendRequests.remove(user);
    }
    saveProfile();
  }


  public ArrayList<User> getFriendRequests()
  {
    return friendRequests;
  }


  public void saveProfile()
  {
    try
    {
      File file = new File(this.owner + ".profile");
      file.createNewFile();

      FileOutputStream outFile = new FileOutputStream(this.owner + ".profile" );
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


