using System;
using System.Data;
using Progress.Rental.DataAccess;

namespace RB.Extranet.DataAccess
{
    public class UnitOfWork : IDisposable
    {
        private bool _disposed;
        private readonly IDbConnection _connection;
        private readonly IDbTransaction _transaction;

        public UnitOfWork()
        {
            _connection = ConnectionFactory.OpenConnection();
            _transaction = _connection.BeginTransaction();
        }

        public void Execute()
        {
            _transaction.Commit();
            _connection.Close();
        }

        public void Abort()
        {
            _transaction.Rollback();
            _connection.Close();
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!_disposed)
            {
                if (disposing)
                {
                    if (_connection.State == ConnectionState.Open)
                    {
                        _connection.Close();
                    }
                    _transaction.Dispose();
                    _connection.Dispose();
                }
            }
            _disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

    }
}
