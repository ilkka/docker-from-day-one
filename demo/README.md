Demos
=====

The `backend/simple-rest-scala` directory has a script, `build-docker-image.sh`
that can be used to do just that. It'll also output instructions on running it.

The `frontend` directory contains two subdirs: `app` is a plain
[Browserify](http://browserify.org/) /
[React](https://facebook.github.io/react/) app that can be started in dev mode
with `npm run start-dev`. The `builder` subdir has the same app in a subdir
also named `app`, but there the `package.json` file has been moved up one level
and there is a Dockerfile beside it. Also included are two scripts, `build.sh`
and `run.sh`. The build script builds an image and tags it as
`webbisauna-builder`, the entrypoint of which is simply "npm". This means that
when running with `docker run`, any arguments after the image name are just
arguments to `npm`. This could be done more gracefully to e.g. make it simpler
to start a shell, but that is left as an exercise to the reader. `run.sh` can
be used to run one-off containers from the image to run the npm commands, it
sets up the volumes so you don't have to.
