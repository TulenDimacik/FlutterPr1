//запросы к БД
abstract class DataBaseRequest{
  static const String tableRole = 'Role';
  static const String tableUsers = 'Users';
  static const String tableUserInformation = 'UserInformation';
  static const String tableOrder = 'Order';
  static const String tableFurniture = 'Furniture';
  static const String tableFurnitureType = 'FurnitureType';
  static const String tableManifacturer = 'Manifacturer';
  static const String tableFurnitureWarehouse = 'FurnitureWarehouse';
  static const String tableWarehouse = 'Warehouse';
  
  static String deleteTable (String table) => 'DROP Table $table';

  static const List<String> tableList = [
    tableRole,
    tableUsers,
    tableUserInformation,
    tableFurnitureType,
    tableManifacturer,
    tableWarehouse,
    tableFurniture,
    tableOrder,
    tableFurnitureWarehouse,
  ];
  static const List<String> tableCreateList = [
    _createTableRole,
    _createTableUsers,
    _createTableUserInformation,
    _createTableFurnitureType,
    _createTableManifacturer,
    _createTableWarehouse,
    _createTableFurniture,
    _createTableOrder,
    _createTableFurnitureWarehouse,
    
  ];

  static const String _createTableRole =
  'CREATE TABLE "$tableRole" ("ID_Role" INTEGER,"Role_Name" TEXT NOT NULL UNIQUE, PRIMARY KEY("ID_Role" AUTOINCREMENT))';

  static const String _createTableUsers =
  'CREATE TABLE "$tableUsers" ("ID_User" INTEGER,"Login" TEXT NOT NULL UNIQUE,"Password" TEXT NOT NULL,"Role_ID" INTEGER,FOREIGN KEY("Role_ID") REFERENCES "Role"("ID_Role"),PRIMARY KEY("ID_User" AUTOINCREMENT))';

  static const String _createTableUserInformation = 
  'CREATE TABLE "$tableUserInformation" ("ID_User_Information" INTEGER,"Surname" TEXT NOT NULL,"User_Name" TEXT NOT NULL, "Patronymic" TEXT NULL, "Email" TEXT NOT NULL,  "User_ID" INTEGER, FOREIGN KEY("User_ID") REFERENCES "Users"("ID_User"),PRIMARY KEY("ID_User_Information" AUTOINCREMENT))';

  static const String _createTableFurnitureType =
   'CREATE TABLE "$tableFurnitureType" ("ID_Furniture_Type" INTEGER,"Type_Name" TEXT NOT NULL UNIQUE, PRIMARY KEY("ID_Furniture_Type" AUTOINCREMENT))';

  static const String _createTableManifacturer = 
  'CREATE TABLE "$tableManifacturer" ("ID_Manifacturer" INTEGER,"Manifacturer_Name" TEXT NOT NULL UNIQUE, "Manifacturer_Country" TEXT NOT NULL, PRIMARY KEY("ID_Manifacturer" AUTOINCREMENT))';
  
  static const String _createTableWarehouse = 
  'CREATE TABLE "$tableWarehouse" ("ID_Warehouse" INTEGER,"Address" TEXT NOT NULL, "Warehouse_Number" INTEGER NOT NULL, PRIMARY KEY("ID_Warehouse" AUTOINCREMENT))';
  
  static const String _createTableFurniture = 
  'CREATE TABLE "$tableFurniture" ("ID_Furniture" INTEGER,"Furniture_Name" TEXT NOT NULL,"Weight" REAL NOT NULL, "Material" TEXT NOT NULL, "Color" TEXT NOT NULL,  "Furniture_Type_ID" INTEGER, "Manifacturer_ID" INTEGER, FOREIGN KEY("Furniture_Type_ID") REFERENCES "Furniture_Type"("ID_Furniture_Type"), FOREIGN KEY("Manifacturer_ID") REFERENCES "Manifacturer"("ID_Manifacturer"), PRIMARY KEY("ID_Furniture" AUTOINCREMENT))';

  static const String _createTableOrder = 
   'CREATE TABLE "$tableOrder" ("ID_Order" INTEGER,"Order_Cost" REAL NOT NULL,"User_ID" INTEGER, "Furniture_ID" INTEGER, FOREIGN KEY("User_ID") REFERENCES "Users"("ID_User"), FOREIGN KEY("Furniture_ID") REFERENCES "Furniture"("ID_Furniture"), PRIMARY KEY("ID_Order" AUTOINCREMENT))';

  static const String _createTableFurnitureWarehouse = 
   'CREATE TABLE "$tableFurnitureWarehouse" ("ID_Furniture_Warehouse" INTEGER,"Count" INTEGER NOT NULL,"Warehouse_ID" INTEGER, "Furniture_ID" INTEGER, FOREIGN KEY("Warehouse_ID") REFERENCES "Warehouse"("ID_Warehouse"), FOREIGN KEY("Furniture_ID") REFERENCES "Furniture"("ID_Furniture"), PRIMARY KEY("ID_Furniture_Warehouse" AUTOINCREMENT))';
  


  

} 