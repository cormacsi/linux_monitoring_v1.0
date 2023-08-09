#!/bin/bash

chmod +rx param.sh
source ./param.sh

output () {
  echo "Total number of folders (including all nested ones) = ${FOLDERS}"
  echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
  if [ ! -z "${TOP_FOLDERS}" ]; then
		echo "${TOP_FOLDERS}"
	fi
  echo "Total number of files = ${NUM_FILES}"
  echo "Number of:"
  echo "Configuration files (with the .conf extension) = ${CONF}"
  echo "Text files = ${TEXT}"
  echo "Executable files = ${EXECUTE}"
  echo "Log files (with the extension .log) = ${LOGS}"
  echo "Archive files = ${ARCHIVE}"
  echo "Symbolic links = ${LINKS}"
  echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
  if [ ! -z "${TOP_FILES}" ]; then
		echo "${TOP_FILES}"
	fi
  echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
  if [ ! -z "${TOP_EXECUTE}" ]; then
		echo "${TOP_EXECUTE}"
	fi
}
