package SMMS.user;

import java.sql.Date;

public class Message {
	    private int id;
	    private String senderId;
	    private String receiverId;
	    private String content;
	    private Date timestamp;
	    private boolean isRead;
		public int getId() {
			return id;
		}
		public String getSenderId() {
			return senderId;
		}
		public String getReceiverId() {
			return receiverId;
		}
		public String getContent() {
			return content;
		}
		public Date getTimestamp() {
			return timestamp;
		}
		public boolean isRead() {
			return isRead;
		}
		public void setId(int id) {
			this.id = id;
		}
		public void setSenderId(String senderId) {
			this.senderId = senderId;
		}
		public void setReceiverId(String receiverId) {
			this.receiverId = receiverId;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public void setTimestamp(Date timestamp) {
			this.timestamp = timestamp;
		}
		public void setRead(boolean isRead) {
			this.isRead = isRead;
		}
		@Override
		public String toString() {
			return "Message[id="+id+",senderId="+senderId+",receiverId="+receiverId+",content="+content+",timestamp="+timestamp+",isRead="+isRead+"]";
		}

	}


