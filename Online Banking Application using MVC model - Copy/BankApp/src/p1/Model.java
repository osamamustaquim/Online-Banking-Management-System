package p1;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class Model {
	private String custid;
	private String accno;
	private String pwd;
	private String balance;
	private String toaccnum;
	private String amntrecname;
	private String email;
	private String name;
	private String transferamt;
	private Date sqldate;
	
	private String Loans;
	private String Loanname;
	private String Loanmail;
	private String Loanphone;
	private String Loanstate;
	
	private String Loanpan;
	

	

	public String getLoanpan() {
		return Loanpan;
	}

	public void setLoanpan(String loanpan) {
		Loanpan = loanpan;
	}

	public String getLoans() {
		return Loans;
	}

	public String getLoanname() {
		return Loanname;
	}

	public String getLoanmail() {
		return Loanmail;
	}

	public String getLoanphone() {
		return Loanphone;
	}

	public String getLoanstate() {
		return Loanstate;
	}

	public void setLoans(String loans) {
		Loans = loans;
	}

	public void setLoanname(String loanname) {
		Loanname = loanname;
	}

	public void setLoanmail(String loanmail) {
		Loanmail = loanmail;
	}

	public void setLoanphone(String loanphone) {
		Loanphone = loanphone;
	}

	public void setLoanstate(String loanstate) {
		Loanstate = loanstate;
	}

	
	
	

	public Date getSqldate() {
		return sqldate;
	}

	public void setSqldate(Date sqldate) {
		this.sqldate = sqldate;
	}

	public void setToaccnum(String toaccnum) {
		this.toaccnum = toaccnum;
	}

	public void setAmntrecname(String amntrecname) {
		this.amntrecname = amntrecname;
	}

	public void setTransferamt(String transferamt) {
		this.transferamt = transferamt;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String username = "system";
	String password = "abcdatabase";

	private Connection con;
	private PreparedStatement ppstmt;
	private ResultSet result;
	private Date sysdate;

	public void setCustid(String custid) {
		this.custid = custid;
	}

	public void setAccno(String accno) {
		this.accno = accno;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public void setBalance(String balance) {
		this.balance = balance;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCustid() {
		return custid;
	}

	public String getAccno() {
		return accno;
	}

	public String getPwd() {
		return pwd;
	}

	public String getBalance() {
		return balance;
	}

	public String getEmail() {
		return email;
	}

	public Model() {
		try {
			// loading the drivers
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Drivers loaded successfully");
			// connecting to the database
			con = DriverManager.getConnection(url, username, password);
			System.out.println("Connected successfully");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Problem in loading the drivers and getting connection");
		}

	}

	public boolean login() {
		try {
			//copied code of include and register file of jsp from login 
			 //<%@include file="bootstrap/css/bootstrap-theme.css" %>
			//<style type="text/css">
		  //  <%@include file="css/register.css" %>
		//</style>
			
			// creating prepare statement
			ppstmt = con.prepareStatement("SELECT * FROM BANKAPP WHERE CUSTID=? AND PWD=?");

			// getting custid and password from login servlet and setting to the setters in
			// model
			ppstmt.setString(1, custid);
			ppstmt.setString(2, pwd);
			result = ppstmt.executeQuery();

			// getting account number from database
			if (result.next() == true) {
				accno = result.getString("accno");

				System.out.println();

				name = result.getString("name");

				return true;
			}
		} catch (Exception e1) {

			e1.printStackTrace();
			System.out.println("fail to fetch account number from model page");
		}
		return false;
	}

	public boolean checkBalance() {
		try {
			ppstmt = con.prepareStatement("SELECT * FROM BANKAPP WHERE ACCNO=?");
			// while setting in placeholder we have to use right side value from session
			ppstmt.setString(1, accno);
			result = ppstmt.executeQuery();
			if (result.next() == true)
				balance = result.getString("balance");
			return true;
		}

		catch (Exception e2) {
			e2.printStackTrace();
			System.out.println("problem in getting balance in model page");
		}
		return false;
	}

	public boolean changePassword() {
		try {
			ppstmt = con.prepareStatement("UPDATE BANKAPP SET PWD=? WHERE ACCNO=?");
			ppstmt.setString(1, pwd);
			ppstmt.setString(2, accno);

			int row = ppstmt.executeUpdate();
			if (row == 0)
				return false;
		} catch (Exception e3) {
			e3.printStackTrace();
			System.out.println("error in updating the changepassword");
		}
		return true;

	}

	public boolean transferAmount() {
		try {

			ppstmt = con.prepareStatement("UPDATE BANKAPP SET BALANCE=BALANCE-? WHERE ACCNO=?");
			ppstmt.setString(1, transferamt);
			ppstmt.setString(2, accno);
			int row = ppstmt.executeUpdate();

			ppstmt = con.prepareStatement("INSERT INTO BANKSTATEMENT VALUES(?,?,?,?,?)");
			ppstmt.setString(1, accno);

			ppstmt.setString(2, transferamt);

			ppstmt.setString(3, toaccnum);

			ppstmt.setString(4, amntrecname);

			ppstmt.setDate(5,  sqldate);
			
			

			ppstmt.executeUpdate();
			if (row == 0) {
				return false;
			}

		} catch (Exception e4) {
			e4.printStackTrace();
			System.out.println("problem in transferring amount from model");
		}
		return true;
	}

	public ArrayList getStatement1() {
		ArrayList al1 = new ArrayList();

		try {
			ppstmt = con.prepareStatement("SELECT * FROM BANKSTATEMENT WHERE ACCNO=?");
			ppstmt.setString(1, accno);
			result = ppstmt.executeQuery();

			while (result.next() == true) {
				String temp = result.getString("TRAMOUNT");
				al1.add(temp);

			}

		} catch (Exception e5) {
			e5.printStackTrace();
			System.out.println("problem in fetching statement  from model");
		}
		return al1;

	}

	public ArrayList getStatement2() {
		ArrayList al2 = new ArrayList();

		try {
			ppstmt = con.prepareStatement("SELECT * FROM BANKSTATEMENT WHERE ACCNO=?");
			ppstmt.setString(1, accno);
			result = ppstmt.executeQuery();

			while (result.next() == true) {
				String temp = result.getString("TRACOUNTNUMB");
				al2.add(temp);

			}
		} catch (Exception e5) {
			e5.printStackTrace();
			System.out.println("problem in fetching statement  from model");
		}
		return al2;
	}

	public ArrayList getStatement3() {
		ArrayList al3 = new ArrayList();

		try {
			ppstmt = con.prepareStatement("SELECT * FROM BANKSTATEMENT WHERE ACCNO=?");
			ppstmt.setString(1, accno);
			result = ppstmt.executeQuery();

			while (result.next() == true) {
				String temp = result.getString("RCPTNAME");
				al3.add(temp);

			}
		} catch (Exception e5) {
			e5.printStackTrace();
			System.out.println("problem in fetching statement  from model");
		}
		return al3;
	}

	public ArrayList getStatement4() {
		ArrayList al4 = new ArrayList();

		try {
			ppstmt = con.prepareStatement("SELECT * FROM BANKSTATEMENT WHERE ACCNO=?");
			ppstmt.setString(1, accno);
			result = ppstmt.executeQuery();

			while (result.next() == true) {
				String temp = result.getString("TRDATE");
				al4.add(temp);
				

			}
		} catch (Exception e5) {
			e5.printStackTrace();
			System.out.println("problem in fetching statement  from model");
		}
		return al4;
	}
	
	
	public boolean loan() {
		try {			

			ppstmt = con.prepareStatement("INSERT INTO LOANSALL VALUES(?,?,?,?,?,?)");
			
			ppstmt.setString(1, Loans);

			ppstmt.setString(2, Loanname);

			ppstmt.setString(3, Loanmail);

			ppstmt.setString(4, Loanphone);

			ppstmt.setString(5,  Loanstate);
			
			ppstmt.setString(6,  Loanpan);			

			int row = ppstmt.executeUpdate();
			if (row == 0) {
				return false;
			}
		} 
		
		catch (Exception e4) {
			e4.printStackTrace();
			System.out.println("problem in inserting loan detail from model");
		}
		return true;
	}

	
	public boolean forgotPwd(String Forgotpwd,String tomail) {
		try {
			ppstmt = con.prepareStatement("UPDATE BANKAPP SET PWD=? WHERE EMAIL=?");
			ppstmt.setString(1, Forgotpwd);
			ppstmt.setString(2, tomail);

			int row = ppstmt.executeUpdate();
			if (row == 0) {
				return false;
		} else {
			return true;
			}
		}
		
		catch (Exception e3) {
			e3.printStackTrace();
			System.out.println("error in updating the changepassword");
		}
		return true;
	}
	

}
