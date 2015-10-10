# Description

This is a survey building program. Survey creators, or authors, can login and build surveys. Upon publishing a survey, authors can send a link to takers. One takers have completed a survey, authors can view all of the results for that survey.

## Details

Authors can signup, and must thereafter login to access the survey builder tool. Authors then have access to the following:

* A list view of all of their surveys
* Ability to edit any survey, UNLESS that survey already has submissions
* Ability to create a brand new survey
* Ability to delete a survey that they authored
* Ability to publish a survey, assuming it has at least one question. By default, surveys are not published.
* When a survey is published, the author receives a link that they can send to people to take the survey.

## Surveys

Surveys must have a title and description, and a set of questions. Each question has the following:

* REQUIRED - Question type: yes/no (displays as yes/no radio checkboxes), short (displays as text field) or long (displays as text area)
* REQUIRED - Question text
* OPTIONAL - Question description

## Taking a Survey

The takers of a survey do not have to login to access the survey. Takers can take the survey as many times as they want, but cannot edit their answers once they have submitted a survey.

## Viewing Results

Authors can view all of the answers for any survey they created, and the answers are grouped by questions.

## Database Structure

![alt tag](https://github.com/Ru-Da-Me/survey_opposum/blob/master/app/assets/images/database_chart.png)

## Wireframe for Survey Creation

![alt tag](https://github.com/Ru-Da-Me/survey_opposum/blob/master/app/assets/images/wireframe.png)
