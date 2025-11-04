package dao;

import util.DBConnection;
import model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.sql.SQLException;
import java.util.UUID;

public class UserDAO {

    // Authenticate user and return User object
    public User authenticateUser(String email, String password) {
        if (email == null || password == null || email.trim().isEmpty() || password.trim().isEmpty()) {
            System.out.println("Invalid input provided.");
            return null;
        }

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users WHERE email = ?")) {

            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                if (password.equals(rs.getString("password"))) {
                    updateLoginTime(rs.getInt("userId")); // Column name fixed
                    System.out.println("Login successful for: " + email);

                    return new User(
                        rs.getInt("userId"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getString("role")
                    );
                } else {
                    System.out.println("Password mismatch for: " + email);
                }
            } else {
                System.out.println("User not found with email: " + email);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    // Update the login time for the user
    public boolean updateLoginTime(int userId) {
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement("UPDATE users SET last_login = NOW() WHERE userId = ?")) {
            stmt.setInt(1, userId);
            int rowsUpdated = stmt.executeUpdate();
            return rowsUpdated > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean checkEmailExists(String email) {
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users WHERE email = ?")) {
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public void saveResetToken(String email, String token, Timestamp expiry) {
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(
                "UPDATE users SET reset_token = ?, token_expiry = ? WHERE email = ?")) {
            stmt.setString(1, token);
            stmt.setTimestamp(2, expiry);
            stmt.setString(3, email);
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean verifyResetToken(String token) {
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(
                "SELECT * FROM users WHERE reset_token = ? AND token_expiry > NOW()")) {
            stmt.setString(1, token);
            ResultSet rs = stmt.executeQuery();
            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updatePassword(String token, String newPassword) {
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(
                "UPDATE users SET password = ?, reset_token = NULL, token_expiry = NULL WHERE reset_token = ?")) {
            stmt.setString(1, newPassword);
            stmt.setString(2, token);
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    }

