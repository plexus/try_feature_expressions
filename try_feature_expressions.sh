git clone git@github.com:clojure/clojure.git
git clone git@github.com:clojure/clojurescript.git
git clone git@github.com:clojure/tools.reader.git

cd clojure
git checkout 08bc5673
git apply ../clojure.diff
./antsetup.sh
mvn install

cd ../tools.reader
git checkout 7770bd4d
git apply ../tools.reader.diff
lein install

cd ../clojurescript
git checkout 11feca41
git apply ../clojurescript.diff
lein install

cd ..
