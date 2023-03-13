#!/bin/bash

CICD="$1"
status_icon="$2"
author="$3"
branch="$4"
commit="$5"
pipeline_id="$6"
special="$7"
api="https://api.telegram.org/bot"
token="5338511027:AAE1Dytp5xQpauqxjn6k7-EmmYDhZlvRkiY"
method="sendMessage"
telegram_user_id="1240823565"
message=""

get_correct_commit_text() {
    validlen=$[ ${#commit} - 1 ]
    commit=`echo $commit | cut -c -$validlen`
}

get_correct_message() {
    status_message="$CICD processing status: $status_icon%0A%0AStage: $special%0AProject: C3_SimpleBashScripts%0APipeline ID: $pipeline_id%0A"
    info_message="Commit author: $author %0ACommit text: \"$commit\"%0ABranch: $branch"
    message="$status_message$info_message"
}

get_CICD_result() {
    if [ "$status_icon" == "success" ] ; then
        status_icon="✅"
    elif [ "$status_icon" == "failed" ] ; then
        status_icon="❌"
    elif [ "$status_icon" == "canceled" ] ; then
        status_icon="⏩"
    fi
}

if [[ -n "$CICD" && -n "$status_icon" ]] ; then
    get_correct_commit_text
    get_CICD_result
    get_correct_message
    curl "$api$token/$method?chat_id=$telegram_user_id&text=$message" 2>/dev/null
else
    echo "Agruments are required. \"./notifyer.sh 'CD' '\$CI_JOB_STATUS' '\$CI_COMMIT_AUTHOR' '\$CI_COMMIT_BRANCH' '\$CI_COMMIT_MESSAGE' '\$CI_PIPELINE_ID'\""
fi
