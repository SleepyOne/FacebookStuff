
package facebook;
import java.util.ArrayList;


public class Profile
{

  private String gender, birthday;
  private Wall wall;
  private ArrayList<String> hobbies;
  private ArrayList<String> friendRequests;


  Profile (String bday, String gender)
  {
    birthday = bday;
    this.gender = gender;
    wall = new Wall();

    hobbies = new ArrayList<String>();
    friendRequests = new ArrayList<String>();
  }


  public String getBirthday ()
  {
    return birthday;
  }


  public String getGender ()
  {
    return gender;
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


