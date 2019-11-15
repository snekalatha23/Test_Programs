. shellTest.cnf

echo "whse batch started"
#select rows from database with the given condition by establishing a connection with the db using userid and password
#echo "SELECT item_nbr, movement_status, storage_location FROM Received_Items where movement_status = 'pending'" | mysql $database -h $HOST -u $userid -p $password > $filename
echo "SELECT TestField1,TestField2,TestField3,TestField4,TestField5,TestField6,TestField7,TestField8,TestField9,TestField10,TestField11,TestField12,TestField13,
TestField14,TestField15,TestField16,TestField17,TestField18,TestField19,TestField20,TestField21,TestField22,TestField23,TestField24,TestField25,TestField26,TestField27,TestField28,TestField29,TestField30,TestField31,TestField32,TestField33,TestField34,TestField35,TestField36,TestField37,TestField38,TestField39,TestField40,TestField41,TestField42,TestField43,TestField44,TestField45,TestField46,TestField47,TestField48,TestField49,TestField50,item_nbr, movement_status, storage_location FROM Received_Items where movement_status = 'pending'" | mysql $database -h $HOST -u $userid -p $password > $filename

if [ -f $filename ]
then
#setting host of ftp
echo "initiating file transfer"
scp $filename $USER@$HOST:/downloads/

else
        echo "no files to transfer"
fi

echo "whse batch completed"
