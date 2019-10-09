#!/bin/bash
start_httpd()
{
   action=$1
   echo "Executing your  action: $action"
   sudo systemctl $action httpd
   if [ $? -eq 0 ]
     then
      echo "Successfully executed your action: $action"
   else
     echo "Unable to execute your action: $action, please check it manually"
   fi
 }
 action=$1

if [ "$action" ==  "start" ]
  then 
    start_httpd start
fi
