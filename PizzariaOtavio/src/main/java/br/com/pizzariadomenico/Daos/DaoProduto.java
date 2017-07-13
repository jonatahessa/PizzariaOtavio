package br.com.pizzariadomenico.Daos;

import br.com.pizzariadomenico.Connection.ConnectionUtils;
import br.com.pizzariadomenico.Process.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jonata
 */
public class DaoProduto {

    public static List<Produto> executarConsulta(String sql) throws SQLException, Exception {
        List<Produto> listaProduto = null;
        Connection connection = null;
        Statement statement = null;
        ResultSet result = null;
        try {
            connection = ConnectionUtils.getConnection();
            statement = connection.createStatement();
            System.out.println("Executando CONSULTA SQL: " + sql);
            result = statement.executeQuery(sql);
            while (result.next()) {
                if (listaProduto == null) {
                    listaProduto = new ArrayList<Produto>();
                }
                Produto produto = new Produto();
                produto.setCodigo(result.getInt("id"));
                produto.setNome(result.getString("nome"));
                produto.setDescricao(result.getString("descricao"));
                produto.setPrecoComum(result.getString("precoComum"));
                produto.setPrecoBroto(result.getString("precoBroto"));
                produto.setAtivo(result.getString("ativo"));
                produto.setTipo(result.getString("tipo"));
                listaProduto.add(produto);
            }
        } finally {
            if (result != null && !result.isClosed()) {
                result.close();
            }
            if (statement != null && !statement.isClosed()) {
                statement.close();
            }
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        }
        return listaProduto;
    }

    public static List<Produto> listarManutencao()
            throws SQLException, Exception {
        String sql = "SELECT * FROM Produtos ORDER BY ID;";

        return executarConsulta(sql);
    }

    public static List<Produto> listarPaginaInicialComum()
            throws SQLException, Exception {
        String sql = "SELECT * FROM Produtos WHERE ativo = 'SIM' AND "
                + "tipo = 'COMUM' ORDER BY ID;";

        return executarConsulta(sql);
    }
    
    public static List<Produto> listarPaginaInicialDoces()
            throws SQLException, Exception {
        String sql = "SELECT * FROM Produtos WHERE ativo = 'SIM' AND "
                + "tipo = 'DOCE' ORDER BY ID;";

        return executarConsulta(sql);
    }
    
    public static List<Produto> listarPaginaInicialBebidas()
            throws SQLException, Exception {
        String sql = "SELECT * FROM Produtos WHERE ativo = 'SIM' AND "
                + "tipo = 'BEBIDA' ORDER BY ID;";

        return executarConsulta(sql);
    }

    public static void inserir(Produto pizza)
            throws SQLException, Exception {

        String sql = "INSERT INTO Produtos (nome, descricao, precoComum, precoBroto, ativo, tipo) "
                + "VALUES (?, ?, ?, ?, ?, ?)";
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionUtils.getConnection();
            statement = connection.prepareStatement(sql);

            statement.setString(1, pizza.getNome());
            statement.setString(2, pizza.getDescricao());
            statement.setString(3, pizza.getPrecoComum());
            statement.setString(4, pizza.getPrecoBroto());
            statement.setString(5, "SIM");
            statement.setString(6, pizza.getTipo());
            System.out.println(statement.toString());

            System.out.println("Executando COMANDO SQL: " + sql);
            statement.execute();
        } finally {
            if (statement != null && !statement.isClosed()) {
                statement.close();
            }
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        }
    }

    public static void desativar(int id)
            throws SQLException, Exception {
        String sql = "UPDATE Produtos SET ativo = ?"
                + "WHERE id = ?; ";
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionUtils.getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, "NÃO");
            statement.setInt(2, id);
            System.out.println("Executando COMANDO SQL: " + sql);
            statement.execute();
        } finally {
            if (statement != null && !statement.isClosed()) {
                statement.close();
            }
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        }
    }

    public static void ativar(int id)
            throws SQLException, Exception {
        String sql = "UPDATE Produtos SET ativo = ?"
                + "WHERE id = ?; ";
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionUtils.getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, "SIM");
            statement.setInt(2, id);
            System.out.println("Executando COMANDO SQL: " + sql);
            statement.execute();
        } finally {
            if (statement != null && !statement.isClosed()) {
                statement.close();
            }
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        }
    }

    public static void alterar(Produto pizza)
            throws SQLException, Exception {
        String sql = "UPDATE Produtos "
                + "SET nome = ?, "
                + "descricao = ?, "
                + "precoComum = ?, "
                + "precoBroto = ?, "
                + "tipo = ? "
                + "WHERE id = ?;";

        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionUtils.getConnection();
            statement = connection.prepareStatement(sql);

            statement.setString(1, pizza.getNome());
            statement.setString(2, pizza.getDescricao());
            statement.setString(3, pizza.getPrecoComum());
            statement.setString(4, pizza.getPrecoBroto());
            statement.setString(5, pizza.getTipo());
            statement.setInt(6, pizza.getCodigo());
            System.out.println(statement.toString());

            System.out.println("Executando COMANDO SQL: " + sql);
            statement.execute();
        } finally {
            if (statement != null && !statement.isClosed()) {
                statement.close();
            }
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        }
    }
    
    public static boolean verificarUsuario (String login, String senha) throws
            SQLException, Exception {
        String sql = "SELECT * FROM Usuarios"
                + " WHERE Username = ?"
                + " AND Password = ?;";
        Connection connection = null;
        PreparedStatement statement = null;

        connection = ConnectionUtils.getConnection();
        statement = connection.prepareStatement(sql);
        
        statement.setString(1, login);
        statement.setString(2, senha);

        System.out.println("Executando CONSULTA SQL: " + sql);
        ResultSet result = statement.executeQuery();

        while (result.next()) {
            return true;
        }

        return false;
    }
}
