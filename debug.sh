export NODE_PATH=$(pwd)/dist/all:$(pwd)/dist/tools
node dist/tools/tsc-watch node watch --debug