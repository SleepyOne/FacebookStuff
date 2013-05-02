
package facebook;
import java.util.ArrayList;
import java.io.*;


public class Group
{

  private String groupName, groupDescription;
  private Wall wall;
  private ArrayList<User> memberList;

		
  Group (String name, String description)
  {
    groupName = name;
    groupDescription = description;

    wall = new Wall(groupName);
    memberList = new ArrayList<User>();

    saveGroup();
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
    saveGroup();
  }
	
	
  public void removeMember(User user)
  {
    if (memberList.contains(user) == true)
    {
      memberList.remove(user);
    }
    saveGroup();
  }


  public Wall getWall()
  {
    return wall;
  }


  public void saveGroup()
  {
    try
    {
      File file = new File(this.groupName + ".group");
      file.createNewFile();

      FileOutputStream outFile = new FileOutputStream(this.groupName + ".group");
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


