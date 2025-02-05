#!/bin/bash

# Github API url
API_URL="https://api.github.com"

# Github username and personal access token
USERNAME=$username
TOKEN=$token

# Owner and Repository information
REPO_OWNER=$1
REPO_NAME=$2

#Funtion to make get request to the github api
function github_api_get {                                                                                                               local endpoint="$1"
   local url="${API_URL}/${endpoint}"

   # Send a get reqest to github api with authentication
   curl -s -u "${USERNAME}:${TOKEN}" "$url"
}

# Function to list user with read access to the repository
function list_users_with_read_access {
   local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

   # Fetch the list of collaborators on the repository
   collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"

   # Display the list of collaborators with read access
   if [[ -z "$collaborators" ]]; then
	echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
   else
        echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
        echo "$collaborators"
   fi	
}


#main script

echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}..."
list_users_with_read_access
