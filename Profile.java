
package facebook;
import java.util.ArrayList;


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


  public void addFriendRequest (User user)
  {
    if (friendRequests.contains(user) == false)
    {
      friendRequests.add(user);
    }
  }


  public void removeFriendRequest (User user)
  {
    if (friendRequests.contains(user) == true)
    {
      friendRequests.remove(user);
    }
  }


  public ArrayList<User> getFriendRequests()
  {
    return friendRequests;
  }


  private void save()
  {

  }


  private void load()
  {

  }

}


