# mvn

##### Skipping tests in Maven

   mvn  -Dmaven.test.skip=true install

##### Creating a Maven project

   mvn  archetype:create -DgroupId=my.work -DartifactId=MyProject

##### Maven Install 3rd party JAR

   mvn  install:install-file -Dfile=<path-to-file> -DgroupId=<group-id> -DartifactId=<artifact-id> -Dversion=<version> -Dpackaging=<packaging> -DgeneratePom=true

##### Install a library to a remote repository

   mvn  deploy:deploy-file -DgroupId=groupId -DartifactId=artifactId -Dversion=1.0 -Dpackaging=jar   -Dfile=pathtolib -DrepositoryId=repository -Durl=url

##### Eclipse needs to know the path to the local maven repository. Therefore the classpath variable M2_REPO has to be set.

   mvn  -Declipse.workspace=<path-to-eclipse-workspace> eclipse:add-maven-repo

##### Maven Install 3rd party JAR

   mvn  install:install-file -Dfile=<path-to-file> -DgroupId=<group-id> -DartifactId=<artifact-id> -Dversion=<version> -Dpackaging=<packaging> -DgeneratePom=true
