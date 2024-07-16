
# backend build first just in case `build` directory is not existed
cd backend
./gradlew clean build

# frontend build
cd ../frontend
npm install && npm run build

# copy static resource from frontend to backend
cp -rf ./dist/ ../backend/build/resources/main/static

# backend packaging
cd ../backend
./gradlew bootJar

# backend jar deploy
cf push -f ./manifest.yml
