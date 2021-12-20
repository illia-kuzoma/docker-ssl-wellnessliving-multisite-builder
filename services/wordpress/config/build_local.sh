#!/bin/bash

cd ../../
WWW="$(pwd)"
WP_ROOT_DIR=$WWW/wp-multisite
JS_HOME_DIR=$WWW/react4multisite
cd $JS_HOME_DIR
npm i
npm run build
./node_modules/.bin/gulp minWlSdk

ln -s $JS_HOME_DIR/build/ $WP_ROOT_DIR/wp-content/themes/constructor_wl/build
