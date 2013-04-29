
package facebook;
import java.util.ArrayList;
import java.util.Hashtable;



public class Repository
{

  private static Repository myInstance;
  private Hashtable<String, User> users;
  private Hashtable<String, Group> groups;
  private Hashtable<String, Event> events;
	
  public static Repository instance()
  {
    if (myInstance == null)
    {
      myInstance = new Repository();
    }
    return myInstance;
  }


  private Repository()
  {
    users = new Hashtable<String, User>();
    groups = new Hashtable<String, Group>();
    events = new Hashtable<String, Event>();
  }
	
	
  public User getUser (String email)
  {
    return users.get(email);
  }
	
	
  public User createNewUser (String name, String email, String password, String bday, String gender)
  {
    User user = new User(name, email, password, bday, gender);

    if (users.containsKey(email) == false)
    {
      users.put(email, user);
      return user;
    }
    else
    {
      return null;
    }
  }
	
	
  public ArrayList<User> getAllUsers()
  {
    return new ArrayList<User>(users.values());
  }
	
	
  public Group getGroup (String groupName)
  {
    return groups.get(groupName);
  }
	
	
  public Group createNewGroup (String groupName, String groupDescription)
  {
    Group group = new Group(groupName, groupDescription);

    if (groups.containsKey(groupName) == false)
    {
      groups.put(groupName, group);
      return group;
    }
    else
    {
      return null;
    }
  }
	
	
  public ArrayList<Group> getAllGroups()
  {
    return new ArrayList<Group>(groups.values());
  }
	

  public Event getEvent (String eventName)
  {
    return events.get(eventName);
  }
	
	
  public Event createNewEvent (String name, String date, String time, String description, String ID)
  {
    Event event = new Event(name, date, time, description, ID);

    events.put(ID, event);
    return event;
  }
	
	
  public ArrayList<Event> getAllEvents()
  {
    return new ArrayList<Event>(events.values());
  }


  public int getNumEvents()
  {
    return events.size();
  }
}


