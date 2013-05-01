
package facebook;
import java.util.ArrayList;


public class Event {

  private String eventName, eventDate, eventTime, eventDescription, eventID;
  private Wall wall;
  private ArrayList<User> guestList;


  Event(String name, String date, String time, String description, String ID)
  {
    eventName = name;
    eventDate = date;
    eventTime = time;
    eventDescription = description;
    eventID = ID;

    wall = new Wall(ID);
    guestList = new ArrayList<User>();
  }
	

  public ArrayList<User> getGuests()
  {
    return guestList;
  }


  public String getName()
  {
    return eventName;
  }

	
  public String getDate()
  {
    return eventDate;
  }

	
  public String getTime()
  {
    return eventTime;
  }
	

  public String getDescription()
  {
    return eventDescription;
  }


  public String getID()
  {
    return eventID;
  }


  public void addGuest(User user)
  {
    if (guestList.contains(user) == false)
    {
      guestList.add(user);
    }
  }
	
		
  public WallPost getEventReminder(String todaysDate)
  {
    return null;
  }
	

  public void removeGuest(User user)
  {
    if (guestList.contains(user) == true)
    {
      guestList.remove(user);
    }
  }
	
	
  public void deleteEvent()
  {

  }

	
  public Wall getWall()
  {
    return wall;
  }


  private void save()
  {

  }


  private void load()
  {

  }

}

