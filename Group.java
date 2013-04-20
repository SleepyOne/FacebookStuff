
package facebook;
import java.util.ArrayList;


public class Group
{

  private String groupName, groupDescription;
  private Wall wall;
  private ArrayList<User> memberList;

		
  Group (String name, String description)
  {
    groupName = name;
    groupDescription = description;

    wall = new Wall();
    memberList = new ArrayList<User>();
  }
	
		
  public ArrayList<User> getMembers()
  {
    return memberList;
  }

		
  public String getName()
  {
    return groupName;
  }


  public String getDescription()
  {
    return groupDescription;
  }


  public void addMember(User user)
  {
    if (memberList.contains(user) == false)
    {
      memberList.add(user);
    }
  }
	
	
  public void removeMember(User user)
  {
    if (memberList.contains(user) == true)
    {
      memberList.remove(user);
    }
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


