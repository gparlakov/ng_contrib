# need to show node where to search for @angular/.. modules in debug mode - since the .js is in a parallel folder and misses the modules
export NODE_PATH=$(pwd)/dist/all:$(pwd)/dist/tools

# next line expects the dist folder to be fleshed out for example by running ./test.sh node 
node --inspect-brk=0.0.0.0:9229 dist/tools/cjs-jasmine

# example only run the static*_spec files
#node --inspect-brk=0.0.0.0:9229 dist/tools/cjs-jasmine -- @angular/**/static*_spec.js
