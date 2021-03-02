#!/bin/sh

echo "Enter the name of your plugin: "

read plugin_name

echo "Making branch for plugin $plugin_name..."
git checkout master > /dev/null
git pull origin master
git checkout -b $USER/plugin/$plugin_name

echo "Creating directory for plugin $plugin_name..."
mkdir ../src/services/pluginService/plugins/$plugin_name
cd ../src/services/pluginService/plugins/$plugin_name

echo "Creating essential files..."
echo "" > $plugin_name.svelte
echo "" > $plugin_name.scss
echo "" > $plugin_name.test.ts

echo "Done"