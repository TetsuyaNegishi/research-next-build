#! /bin/bash

cd v3
rm -rf .next
npm run build

cd ../v4
rm -rf .next
npm run build
