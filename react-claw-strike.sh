#!/usr/bin/env bash


run_dev(){
    npm run start
}

parse(){
   local command=${1}
   shift
   case ${command} in
        build)
            make_build;;
        run)
            run_dev;;
        *)
            echo "unknown command";;
   esac
}

parse $@

