#! /bin/bash

A_DIR='./v3'
B_DIR='./v4'

A_NEXT_DIR="${A_DIR}/.next"
B_NEXT_DIR="${B_DIR}/.next"

diff -rq $A_NEXT_DIR $B_NEXT_DIR -X ../.diffignore
