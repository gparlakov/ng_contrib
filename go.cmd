docker run --rm -ti  -v %~dp0\\angular:/angular -p 9876:9876 -p9229:9229 --name ng_contrib  node:8 bash