#!/bin/sh
#registration_url="https://api.github.com/repos/${GITHUB_OWNER}/${GITHUB_REPOSITORY}/actions/runners/registration-token"
#registration_url="https://api.github.com/orgs/${GITHUB_ORG}/actions/runners/registration-token"
#echo "Requesting registration URL at '${registration_url}'"

#payload=$(curl -sX POST -H "Authorization: token ${GITHUB_PAT}" ${registration_url})
#export RUNNER_TOKEN=$(echo $payload | jq .token --raw-output)

sudo ./bin/installdependencies.sh
#./config.sh --url https://github.com/ECSTC --token AJRM7T66ACMHZCLZYIJT2B3DDL37I
./config.sh --url https://github.com/ECSTC --token AJRM7T66ACMHZCLZYIJT2B3DDL37I --name `hostname` --runnergroup "Default" --labels "AKS-Pods" --work _work --replace true
./run.sh &