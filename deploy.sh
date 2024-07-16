# frontend build
cd frontend
npm install && npm run build

# copy static resource
cp -rf ./dist/ ../backend/build/resources/main/static

# backend build
cd ../backend
./gradlew bootJar

# backend jar deploy
cf push -f ./manifest.yml
