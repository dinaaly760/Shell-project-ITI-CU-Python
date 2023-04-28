#!/bin/bash
#Bash Shell Script Database Management System project -ITI-CU-Python2023(DBMS)@Dina Aly
function create_db {
    echo "Enter the name of the database:"
    read dbname
    mkdir $dbname
    echo "Database $dbname created successfully."
}

# List existing databases
function list_db {
  echo "Available databases:"
  ls *.db

}

function connect_db {
    echo "Enter the name of the database:"
    read db_name
    cd $db_name
    echo "Connected to database $db_name."
}

function drop_db {
    echo "Enter the name of the database:"
    read db_name
    rm -r $db_name
    echo "Database $db_name dropped successfully."
}
# Function to create a new table
function create_table {
    echo "Enter table name:"
    read table_name
    echo "Enter column names (separated by spaces):"
    read columns
    echo "Enter column types (separated by spaces, in the same order as the column names):"
    read types
    echo "Enter primary key (column name):"
    read primary_key
    echo "Creating table $table_name with columns: $columns"
    echo "Column types: $types"
    echo "Primary key: $primary_key"
   
}


# Function to drop a table
function drop_table {
    echo "Enter table name to drop:"
    read table_name
    echo "Dropping table $table_name"
    
}

# Function to insert data into a table
function insert_into_table {
    echo "Enter table name to insert into:"
    read table_name
    echo "Enter data (separated by spaces):"
    read data
    echo "Inserting data $data into table $table_name"
    
}


# Function to update data in a table
function update_table {
    echo "Enter table name to update:"
    read table_name
    echo "Enter column name to update:"
    read column_name
    echo "Enter new value for $column_name:"
    read new_value
    echo "Enter condition (e.g. 'id=1'):"
    read condition
    echo "Updating data in table $table_name set $column_name=$new_value where $condition"
    
}

#  menu loop

while true
 do
    echo "Select an option:"
    echo "1. Create Database"
    echo "2. List Databases"
    echo "3. Connect To Database"
    echo "4. Drop Database"
    echo "5. Create table"
    echo "6. Drop table"
    echo "7. Insert into table"
    echo "8. Update table"
    echo "9. Quit"
    read -p "Select an option: " option
    case $option in
        1) create_db;;
        2) list_db;;
        3) connect_db;; 
        4) drop_dp;;
        5) create_table;;
        6) drop_table;;
        7) insert_into_table;;
        8) update_table;;
        9) break;;
    esac 
done
