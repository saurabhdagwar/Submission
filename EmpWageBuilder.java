public class EmpWageBuilder
{
	public static void main(String args[])
	{
		int fulltime = 1;
		double empCheck = Math.floor(Math.random()*10)%2;
		if(empCheck==fulltime)
			{
			System.out.println("Employee is present");
			}
		else
			{
			System.out.println("Employee is Absent");
			}
	}

}

