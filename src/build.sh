#!/bin/bash
. ~/.bash_profile
#author wanlgei
#data 2013/09/26
#desc£ºThis shell script is used for building package
#==================================================
#configure parameters here
#==================================================
PROJECT_NAME=SunivoWeb
PACKAGE_NAME=SunivoWeb
BUILD_REVISION=$1
PROJECT_VERSION=$2
MVN_OPTION=$3
BUILD_TIMESTAMP=`date +%Y%m%d`
BUILD_NAME=${PROJECT_NAME}-${PROJECT_VERSION}-build${BUILD_REVISION}-${BUILD_TIMESTAMP}
#==================================================
clear
echo "start to build ${PROJECT_NAME} project##############################################################################"
mvn clean package ${MVN_OPTION}

mv target/${PACKAGE_NAME}.war target/${BUILD_NAME}.war

exit 0
