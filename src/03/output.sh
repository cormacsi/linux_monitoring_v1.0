#!/bin/bash

chmod +rx param.sh
source ./param.sh

output () {
  echo -e "$1$2HOSTNAME =$3$4 ${HOSTNAME}${NC}"
  echo -e "$1$2TIMEZONE =$3$4 ${TIMEZONE}${NC}"
  echo -e "$1$2USER =$3$4 ${USER}${NC}"
  echo -e "$1$2OS =$3$4 ${OS}${NC}"
  echo -e "$1$2DATE =$3$4 ${DATE}${NC}"
  echo -e "$1$2UPTIME =$3$4 ${UPTIME}${NC}"
  echo -e "$1$2UPTIME_SEC =$3$4 ${UPTIME_SEC}${NC}"
  echo -e "$1$2IP =$3$4 ${IP}${NC}"
  echo -e "$1$2MASK =$3$4 ${MASK}${NC}"
  echo -e "$1$2GATEWAY =$3$4 ${GATEWAY}${NC}"
  echo -e "$1$2RAM_TOTAL =$3$4 ${RAM_TOTAL}${NC}"
  echo -e "$1$2RAM_USED =$3$4 ${RAM_USED}${NC}"
  echo -e "$1$2RAM_FREE =$3$4 ${RAM_FREE}${NC}"
  echo -e "$1$2SPACE_ROOT =$3$4 ${SPACE_ROOT}${NC}"
  echo -e "$1$2SPACE_ROOT_USED =$3$4 ${SPACE_ROOT_USED}${NC}"
  echo -e "$1$2SPACE_ROOT_FREE =$3$4 ${SPACE_ROOT_FREE}${NC}"
}
