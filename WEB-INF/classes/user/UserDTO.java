package user;

public class UserDTO {
	
	String userID;
	String userPassword;
	
	public String getUserID() {		//getter 데이터 가져옴
		return userID;
	}
	public void setUserID(String userID) {		//setter 데이터 기록
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	
	
	public UserDTO() {
	
	}
	
	public UserDTO(String userID, String userPassword) {
		super();
		this.userID = userID;
		this.userPassword = userPassword;
		
	}
	
}
