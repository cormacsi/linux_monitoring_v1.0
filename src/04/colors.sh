#!/bin/bash

source ./only_colors.sh
# 1 - white, 2 - red, 3 - green,
# 4 - blue, 5 – purple, 6 - black
set_color () {
  case "$ONE" in
    1) ONE=${BGWH};;
    2) ONE=${BGRD};;
    3) ONE=${BGGR};;
    4) ONE=${BGBL};;
    5) ONE=${BGPU};;
    6) ONE=${BGBLC};;
  esac
  case "$TWO" in
    1) TWO=${WH};;
    2) TWO=${RD};;
    3) TWO=${GR};;
    4) TWO=${BL};;
    5) TWO=${PU};;
    6) TWO=${BLC};;
  esac
  case "$TRE" in
    1) TRE=${BGWH};;
    2) TRE=${BGRD};;
    3) TRE=${BGGR};;
    4) TRE=${BGBL};;
    5) TRE=${BGPU};;
    6) TRE=${BGBLC};;
  esac
  case "$FOR" in
    1) FOR=${WH};;
    2) FOR=${RD};;
    3) FOR=${GR};;
    4) FOR=${BL};;
    5) FOR=${PU};;
    6) FOR=${BLC};;
  esac
}