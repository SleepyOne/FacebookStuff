
package facebook;
import java.util.ArrayList;


public class User
{

  private String userName, emailAddress, password, birthday, gender;
  private ArrayList<User> friends;
  private Profile profile;
  private ArrayList<WallPost> newsfeed;


  User(String name, String email, String pw, String bday, String gender)
  {
    userName = name;
    emailAddress = email;
    password = pw;
    birthday = bday;
    this.gender = gender;
    profile = new Profile(birthday, gender);

    friends = new ArrayList<User>();
    newsfeed = new ArrayList<WallPost>();
  }

	
  public String getEmail()
  {
    return emailAddress;
  }
	
	
  public void setEmail(String email)
  {
    emailAddress = email;
  }
	

  public String getPassword()
  {
    return password;
  }
	

  public void setPassword(String pw)
  {
    password = pw;
  }
	

  public String getUserName()
  {
    return userName;
  }

	
  public void setUserName(String name)
  {
    userName = name;
  }
	
	
  public void makeWallPost(String text)
  {
    //WallPost post = new WallPost(name, text);
    
  }
	
	
  public void addFriend(User user)
  {
    if (friends.contains(user) == false)
    {
      friends.add(user);
    }
  }
	
	
  public void removeFriend(User user)
  {
    if (friends.contains(user) == true)
    {
      friends.remove(user);
    }
  }
	
	
  public java.util.ArrayList<WallPost> getNewsfeed()
  {
    return newsfeed;
  }


  private void save()
  {

  }


  private void load()
  {

  }

}


