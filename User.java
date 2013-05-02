
package facebook;
import java.util.ArrayList;
import java.io.*;


public class User
{

  private String userName, emailAddress, password, birthday, gender;
  private ArrayList<User> friends;
  private Profile profile;
  private ArrayList<WallPost> newsfeed;
  private ArrayList<Group> groupsJoined;
  private ArrayList<Event> eventsJoined;


  User(String name, String email, String pw, String bday, String gender)
  {
    userName = name;
    emailAddress = email;
    password = pw;
    birthday = bday;
    this.gender = gender;
    profile = new Profile(this);

    friends = new ArrayList<User>();
    newsfeed = new ArrayList<WallPost>();
    groupsJoined = new ArrayList<Group>();
    eventsJoined = new ArrayList<Event>();

    saveUser();
  }


  public Profile getProfile()
  {
    return profile;
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


  public String getBirthday()
  {
    return birthday;
  }


  public void setBirthday(String bday)
  {
    birthday = bday;
  }


  public String getGender()
  {
    return gender;
  }


  public void setGender(String g)
  {
    gender = g;
  }
	
	
  public void addFriend(User user)
  {
    if (friends.contains(user) == false)
    {
      friends.add(user);
    }
    saveUser();
  }
	
	
  public void removeFriend(User user)
  {
    if (friends.contains(user) == true)
    {
      friends.remove(user);
    }
    saveUser();
  }


  public ArrayList<User> getFriends()
  {
    return friends;
  }
	
	
  public ArrayList<WallPost> getNewsfeed()
  {
    

    return newsfeed;
  }


  public void addGroup(Group group)
  {
    groupsJoined.add(group);
 
    saveUser();
  }


  public void removeGroup(Group group)
  {
    groupsJoined.remove(group);

    saveUser();
  }


  public ArrayList<Group> getGroupsJoined()
  {
    return groupsJoined;
  }


  public void addEvent(Event event)
  {
    eventsJoined.add(event);

    saveUser();
  }


  public void removeEvent(Event event)
  {
    eventsJoined.remove(event);

    saveUser();
  }


  public ArrayList<Event> getEventsJoined()
  {
    return eventsJoined;
  }


  public void saveUser()
  {
    try
    {
      File file = new File(this.emailAddress + ".user");
      file.createNewFile();

      FileOutputStream outFile = new FileOutputStream(this.emailAddress + ".user");
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


