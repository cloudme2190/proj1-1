#!/usr/bin/env groovy

/**
 * @ Maintainer sudheer veeravalli<veersudhir83@gmail.com>
 * Plugins Needed in Jenkins: Ant, Maven, Ansible, Artifactory, SonarQube,
 * PMD, JUnit, Jacoco, HTML Publisher,
 */

/* Only keep the 10 most recent builds. */
def projectProperties = [
        buildDiscarder(logRotator(artifactDaysToKeepStr: '20', artifactNumToKeepStr: '20', daysToKeepStr: '20', numToKeepStr: '20')),
        [$class: 'GithubProjectProperty', projectUrlStr: 'https://github.com/veersudhir83/proj1.git/']
        //,pipelineTriggers([pollSCM('H/10 * * * *')])
]

properties(projectProperties)

try {
    node {
        def mvnHome
        def mvnAnalysisTargets = '-P metrics pmd:pmd test javadoc:javadoc '
        def antHome

        stage('Tool Setup'){

            // ** NOTE: These tools must be configured in the jenkins global configuration.
            try {
                if (isUnix()) {
                    sh "echo 'Running in Unix mode'"
                } else {
                    bat(/echo 'Running in windows mode' /)
                }
                mvnHome = tool name: 'mvn', type: 'maven'
                antHome = tool name: 'ant', type: 'ant'
            } catch (exc) {
                error "Failure in Tool Setup stage: ${exc}"
            }
        }

        stage('Checkout') {
            try {
                // Checkout codes from repository
                dir('proj1') {
                    git url: 'https://github.com/veersudhir83/proj1.git',
                            branch: 'master'
                }
            } catch (exc) {
                error "Failure in Checkout stage: ${exc}"
            }
        }
    }
} catch (exc) {
    error "Caught: ${exc}"
}
