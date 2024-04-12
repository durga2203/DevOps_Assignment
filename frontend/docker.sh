dockerUsername='durga2203'
dockerPassword='Welcome@2023'
dockerImageName='angular-frontend'
dockerImageTag='latest'
docker login --username=$dockerUsername --password=$dockerPassword
docker build -t $dockerImageName .
docker tag $dockerImageName $dockerUsername/$dockerImageName:$dockerImageTag
docker push $dockerUsername/$dockerImageName:$dockerImageTag
