mkdir $HOME/release
rm -r $HOME/release/*

cd forge
git checkout 4b0dbdb19b720c31736d096f126aab527843a20f
cd ..
git pull origin master
./gradlew --parallel -PofficialBuild clean setupPhoenix --parallel jar packageBundle
cp build/distributions/Phoenix*server* $HOME/release/Phoenix-1.11.2-2454-server.jar
cd build/distributions/
unzip Phoenix*bundle*zip
rm -r bin/unknown
mv bin libraries
zip -r libraries.zip libraries
cp libraries.zip $HOME/release
