import 'package:mysql1/mysql1.dart';

class MySQLAPI {
  late MySqlConnection _connection;

  Future<void> connectToMySQL() async {
    final settings = ConnectionSettings(
      host: '10.0.2.2',
      port: 3306,
      user: 'root',
      // password: '',
      db: 'mysql_anime_flutter',
    );

    _connection = await MySqlConnection.connect(settings);
  }

  Future<Map<String, dynamic>?> login(String email, String password) async {
    final result = await _connection.query(
      'SELECT * FROM users WHERE email = ? AND password = ?',
      [email, password],
    );

    if (result.isNotEmpty) {
      final row = result.first;
      final id = row['id'];
      final email = row['email'];
      final username = row['username'];

      return {
        'id': id,
        'email': email,
        'username': username,
      };
    } else {
      return null;
    }
  }

  Future<void> register(String username, String email, String password) async {
    await _connection.query(
      'INSERT INTO users (username, email, password) VALUES (?, ?, ?)',
      [username, email, password],
    );
  }

  Future<void> closeConnection() async {
    await _connection.close();
  }
}
