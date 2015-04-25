using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Progress.Rental.DataAccess
{
    public static class ConnectionFactory
    {
        public static IDbConnection OpenConnection()
        {
            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            var connection = getConnection(connectionString);
            return connection;
        }

        public static IDbConnection OpenConnection(string connectionString)
        {
            var connection = getConnection(connectionString);
            return connection;
        }

        private static IDbConnection getConnection(string connectionString)
        {
            var connection = new SqlConnection(connectionString);
            connection.Open();
            return connection;
        }
    }
}
