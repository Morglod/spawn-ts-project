#!/usr/bin/env bash

git init
npm init
npm i typescript -g
tsc --init
echo /node_modules > ".gitignore"
npm i typescript --save-dev
mkdir src
mkdir lib
sed -i -- 's/\/\/\s\"outDir\"\:\s\"\.\/\"/\"outDir\"\: \"\.\/lib\"/g' tsconfig.json
sed -i -- 's/\/\/\s\"rootDir\"\:\s\"\.\/\"/\"rootDir\"\: \"\.\/src\"/g' tsconfig.json
sed -i -- 's/\/\/\s\"lib\"\:\s\[/\"lib\"\: \[ \"es2018\" /g' tsconfig.json
sed -i -- 's/\/\/\s\"declaration\"/\"declaration\"/g' tsconfig.json
git add .
git commit -m "init"
echo happy coding! 🙂
