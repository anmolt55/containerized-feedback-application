To build the docker image:

1. Clone the repo and inside the repo execute following command to push the image.
2. Build the docker image using ```docker build --tag mpremashish1/student-survey:${BUILD_TIMESTAMP} .```
3. Login into respective docker hub using ```sudo docker login -u mpremashish1 -p \"${DOCKERHUB_PASS}\```
4. To push the docker image ``` docker push mpremashish1/student-survey:${BUILD_TIMESTAMP} ```

To use the jenkins file:
1. Provide the jenkins file path to scm part of Jenkins.

To generate the War file:
1. Use command ```jar -cvf studentform.war * ``` inside the webapp folder
