#!/bin/sh
#getopts_sample
if [ $# -lt 1 ];then
 echo "set mongoDB server running module:"
 echo "-s mongos,The Sharding Router"
 echo "-c mongod,The Sharding Configuration Server"
 echo "-d mongod,The Sharding Data Server"
 echo "-r mongod,The Sharding repServer"
 exit 1
fi

while getopts "scdr" OPTION
do
    case $OPTION in
     s)
       echo "s"
       ;;
     c)
       echo "c" $OPTARG
       ;;
     d) 
       echo "d" $OPTARG
       ;;
     r)
       echo "r" $OPTARG
       ;;
    esac
done

#
echo $1