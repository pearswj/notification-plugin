if [ ! -f lib/s3.jar ]; then
    echo "lib/s3.jar not found"
    exit
fi
mkdir -p repo
mvn install:install-file -Dfile=lib/s3.jar -DgroupId=org.jenkins-ci.plugins -DartifactId=s3 -Dversion=0.7-SNAPSHOT -Dpackaging=jar -DlocalRepositoryPath=repo
