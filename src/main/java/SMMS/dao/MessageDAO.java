package SMMS.dao;

import SMMS.user.Message;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;
public class MessageDAO {
    private final String jdbcURL = "jdbc:mysql://localhost:3306/smms";
    private final String jdbcUsername = "root";
    private final String jdbcPassword = "Ankita@123";

    public List<Message> getMessagesForUser(int userId) {
        List<Message> messages = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
             PreparedStatement preparedStatement = connection.prepareStatement(
                     "SELECT * FROM messages WHERE receiverId = ? ORDER BY timestamp DESC")) {
            preparedStatement.setInt(1, userId);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String senderId = resultSet.getString("senderId");
                String receiverId = resultSet.getString("receiverId");
                String content = resultSet.getString("content");
                Date timestamp = resultSet.getDate("timestamp");
                boolean isRead = resultSet.getBoolean("is_read");

                Message message = new Message();
                message.setId(id);
                message.setSenderId(senderId);
                message.setReceiverId(receiverId);
                message.setContent(content);
                message.setTimestamp(timestamp);
                message.setRead(isRead);

                messages.add(message);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(messages);
        return messages;
    }

    public void sendMessage(Message message) {
        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
             PreparedStatement preparedStatement = connection.prepareStatement(
                     "INSERT INTO messages (senderId, receiverId, content, timestamp, is_read) VALUES (?, ?, ?, NOW(), ?)")) {
            preparedStatement.setString(1, message.getSenderId());
            preparedStatement.setString(2, message.getReceiverId());
            preparedStatement.setString(3, message.getContent());
            preparedStatement.setBoolean(4, message.isRead());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
