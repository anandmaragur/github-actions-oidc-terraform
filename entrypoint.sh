#!/bin/sh
#registration_url="https://api.github.com/repos/${GITHUB_OWNER}/${GITHUB_REPOSITORY}/actions/runners/registration-token"
#registration_url="https://api.github.com/orgs/${GITHUB_ORG}/actions/runners/registration-token"
#echo "Requesting registration URL at '${registration_url}'"

#payload=$(curl -sX POST -H "Authorization: token ${GITHUB_PAT}" ${registration_url})
#export RUNNER_TOKEN=$(echo $payload | jq .token --raw-output)

./config.sh --url https://github.com/ECSTC --token AJRM7T6HPA5T6PUTW422M73DC5BSW


nohup ./run.sh &