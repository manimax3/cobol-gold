#!/bin/sh

cobc -x hello_world.cbl linkage.c -O0 -lraylib
