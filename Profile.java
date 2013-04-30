
package facebook;
import java.util.ArrayList;


public class Profile
{

  private Wall wall;
  private ArrayList<String> hobbies;
  private ArrayList<String> friendRequests;
  private User owner;
  private String picture;


  Profile (User owner)
  {
    this.owner = owner;
    wall = new Wall(owner.getEmail());

    hobbies = new ArrayList<String>();
    friendRequests = new ArrayList<String>();

    picture = null;
  }


  public String getPicture()
  {
    return picture;
  }


  public void setPicture(String name)
  {
    picture = name;
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
  }


  public Wall getWall ()
  {
    return wall;
  }


  public void addFriendRequest (String username)
  {
    if (friendRequests.contains(username) == false)
    {
      friendRequests.add(username);
    }
  }


  public void removeFriendRequest (String username)
  {
    if (friendRequests.contains(username) == true)
    {
      friendRequests.remove(username);
    }
  }


  private void save()
  {

  }


  private void load()
  {

  }

}


