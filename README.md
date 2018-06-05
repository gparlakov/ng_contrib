# ng_contrib
A repository for the project to clone an angular fork repo from a linux container running on Windows. Goal is to have angular build in its 'natural' environment.

## Rationale
I had issues that the `build.sh` and `test.sh` would not be able to run on _Linux subsytem for Windows_ or would get CRLF line endings when git cloned. And also I wanted to learn docker. 

## Solution
1. Have a docker container running linux + node + yarn (as pointed out [here](https://github.com/angular/angular/blob/master/docs/DEVELOPER.md#prerequisite-software))
2. Provide a windows-side empty folder as volume `/angular` for the container
3.  Have the container `git clone https://github.com/[your-angular-clone]` into `/angular`
4. Build/Run tests via an interactive `docker run`
5. Edit code in VS Code Windows side 

## Step-by-step
1. Install docker for windows and make sure it works - `docker run hello-world`
2. Setup an empty angular folder or use the one from this repo
3. `docker run -ti -v angular:/angular --name ng_contrib node:8 bash` this will start the standart node:8 image and run `bash` inside it also attaching as a volume the empty folder(assuming it was called `angular`) from previous step. We need that to be able to edit the code host-side 
4. `git clone https://github.com/gparlakov/angular /angular` clone our repo in /angular.  If you want to be able to make changes to it - Replace with your own fork of angular.
5. `cd angular`
6. `yarn install` - ready the workspace

At this point you should be able to run build or tests:
 - `./build.sh` - could error due to rsync
 - `./test.sh node` (note that browser-based tests  need some more work because a ui app can't yet run in a container. Will need a headless brows)

