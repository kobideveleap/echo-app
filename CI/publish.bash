#!/bin/bash
if [[ ${GIT_BRANCH} == *"master"* ]]; then                    
    docker push eu.gcr.io/first-k8s-project-256708/echoapp:1.0."${BUILD_NUMBER}"
fi
if [[ ${GIT_BRANCH} == *"dev"* ]]; then
    docker push eu.gcr.io/first-k8s-project-256708/echoapp:dev-"${GIT_COMMIT}"
fi
if [[ ${GIT_BRANCH} == *"staging"* ]]; then
    docker push eu.gcr.io/first-k8s-project-256708/echoapp:staging-"${GIT_COMMIT}"
fi