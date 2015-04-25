using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Progress.Rental.Model;
using Dapper;

namespace Progress.Rental.DataAccess
{
    public class SearchRepository
    {
        private readonly IDbConnection _connection;
        private readonly IDbTransaction _transaction;

        public SearchRepository(IDbConnection connection, IDbTransaction transaction)
        {
            _connection = connection;
            _transaction = transaction;
        }

        public static List<Properties> GetHomepageProperties(string _city_nm, string _state_nm)
        {
            using (var connection = ConnectionFactory.OpenConnection())
            {
                var Result = connection.QueryMultiple("spLoad_homepage_properties", new { city_nm = _city_nm, state_nm = _state_nm }, commandType: CommandType.StoredProcedure);
                return Result.Read<Properties>().ToList();
            }
        }

        public static List<Properties> LoadFeaturedHome(string _city_nm, string _state_nm)
        {
            using (var connection = ConnectionFactory.OpenConnection())
            {
                var Result = connection.QueryMultiple("spLoad_FeatureHomebyCoordinates", new { city_nm = _city_nm, state_nm = _state_nm }, commandType: CommandType.StoredProcedure);
                return Result.Read<Properties>().ToList();
            }
        }

        public static List<Properties> GetSimilarHomes(string _beds_nm, string _baths_nm, string _city_nm, string _states_nm, string _zip, int _propertyID)
        {
            using (var connection = ConnectionFactory.OpenConnection())
            {
                var Result = connection.QueryMultiple("spLoad_SimilarHome", new { bed = _beds_nm, bath = _baths_nm, city_nm = _city_nm, state_nm = _states_nm, Zip = _zip, propertyid = _propertyID }, commandType: CommandType.StoredProcedure);
                return Result.Read<Properties>().ToList();
            }
        }

        public static List<Properties> GetSimilarHomesNew(string _beds_nm, string _baths_nm, string _city_nm, string _states_nm, string _zip)
        {
            using (var connection = ConnectionFactory.OpenConnection())
            {
                var Result = connection.QueryMultiple("spLoad_SimilarHomeNew", new { bed = _beds_nm, bath = _baths_nm, city_nm = _city_nm, state_nm = _states_nm, Zip = _zip }, commandType: CommandType.StoredProcedure);
                return Result.Read<Properties>().ToList();
            }
        }

        public static PropertyResult SearchProperties(string _searchString)
        {
            using (var connection = ConnectionFactory.OpenConnection())
            {
                PropertyResult ObjResult = new PropertyResult();
                var Result = connection.QueryMultiple("spLoad_properties", new { Search_string = _searchString }, commandType: CommandType.StoredProcedure);

                ObjResult.PropertyList = Result.Read<Properties>().ToList();
                ObjResult.BedRoomList = Result.Read<BedRooms>().ToList();
                ObjResult.BathRoomList = Result.Read<BothRooms>().ToList();
                return ObjResult;
            }
        }

        public static PropertyResult SearchRentHome(int _searchString)
        {
            using (var connection = ConnectionFactory.OpenConnection())
            {
                PropertyResult ObjResult = new PropertyResult();
                var Result = connection.QueryMultiple("SP_LOADRENTHOME", new { PROP_ID = _searchString }, commandType: CommandType.StoredProcedure);

                ObjResult.PropertyList = Result.Read<Properties>().ToList();
                return ObjResult;
            }
        }

        public static List<AutoComplete> AutoComplete(string _city_nm)
        {
            using (var connection = ConnectionFactory.OpenConnection())
            {
                var Result = connection.QueryMultiple("SEARCH_PRO", new { @SEARCH_TXT = _city_nm }, commandType: CommandType.StoredProcedure);
                return Result.Read<AutoComplete>().ToList();
            }
        }

        public static List<string> AutoCompleteList(string _searchString)
        {
            using (var connection = ConnectionFactory.OpenConnection())
            {
                var Result = connection.QueryMultiple("spLoad_AutoComplete", new { @Search_string = _searchString }, commandType: CommandType.StoredProcedure);
                return Result.Read<string>().ToList();
            }
        }

        public static PropertyAmenities GetPropertyAmenities(int _property_id)
        {
            using (var connection = ConnectionFactory.OpenConnection())
            {
                var Result = connection.QueryMultiple("spLoad_amenties", new { Prop_Id = _property_id }, commandType: CommandType.StoredProcedure);
                return Result.Read<PropertyAmenities>().FirstOrDefault();
            }
        }

        public static Properties GetProperty(int _propertyid)
        {
            using (var connection = ConnectionFactory.OpenConnection())
            {
                PropertyResult ObjResult = new PropertyResult();
                var Result = connection.QueryMultiple("spGet_property", new { propertyid = _propertyid }, commandType: CommandType.StoredProcedure);
                return Result.Read<Properties>().FirstOrDefault();
            }
        }
    }
}
