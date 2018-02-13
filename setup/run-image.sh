: '
Variable definitions:

    APIGEE_ORG:
        Name of the Apigee org you want your proxy to be deployed in. Used by
        maven during proxy deployment.
    APIGEE_USERNAME
        Username of the user to be used for proxy deployment. Used by maven
        during proxy deployment.
    APIGEE_PASSWORD
        Password of the user to be used for proxy deployment. Used by maven
        during proxy deployment.
    API_DOMAIN_TEST
        Apigee proxy domain name with port (excluding scheme) for test
        environment. Used by proxy integration testing.
        Example: oseymen-test.apigee.net
    API_DOMAIN_PROD
        Apigee proxy domain name with port (excluding scheme) for prod
        environment. Used by proxy integration testing.
        Example: oseymen-prod.apigee.net
    SCM_URL
        Git remote URL to the repo. Used by Jenkins to clone and fetch proxy
        source code.
        Example: git@github.com:seymen/currency-v1.git
'

docker run -d -p 9001:8080 \
	-e APIGEE_ORG=apigee-cs \
	-e APIGEE_USERNAME=sdavis@apigee.com \
	-e APIGEE_PASSWORD=BluIPA314BluIPA314 \
	-e API_DOMAIN_TEST=http://apigee-cs-test.apigee.net \
	-e API_DOMAIN_PROD=http://apigee-cs-prod.apigee.net \
	-e SCM_URL=git@github.com:seantdg/ci-demo-airline.git \
--name my-ci ci
