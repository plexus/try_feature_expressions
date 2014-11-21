git clone git@github.com:clojure/clojure.git
git clone git@github.com:clojure/clojurescript.git
git clone git@github.com:clojure/tools.reader.git

cd clojure
git apply ../clojure.diff
./antsetup.sh
mvn install

cd ../tools.reader
git apply ../tools.reader.diff
lein install

cd ../clojurescript
git apply ../clojurescript.diff
lein install

cd ..
