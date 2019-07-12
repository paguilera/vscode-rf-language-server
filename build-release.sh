#!/bin/bash

cd server
echo "Building server"
rm -rf ./node_modules
npm ci
npm run clean
npm run compile

echo "Building client"
cd ../client
rm -rf ./node_modules
npm ci
vsce package
