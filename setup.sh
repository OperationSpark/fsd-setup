#!/bin/bash
read -p "Enter Your GitHub Username: "  username
read -s -p "Enter Your GitHub Password: "  password

mkdir projects
cd projects

git clone https://${username}:${password}@github.com/operationspark/circularity
git clone https://github.com/operationspark/platformer
git clone https://github.com/operationspark/bouncing-box

cd platformer
rm -rf .git* .master
bower install
cd ../bouncing-box
rm -rf .git* .master
cd ../circularity
rm -rf .git* .master
bower install


