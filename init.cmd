docker run --rm -ti  -v %~dp0angular:/angular --name ng_contrib  node:10 ^
 bash -c "git clone https://github.com/angular/angular /angular && cd angular && yarn"  