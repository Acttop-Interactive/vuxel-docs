const fs = require('fs');
const path = require('path');

fs.copyFileSync(path.join(__dirname, 'Vuxel.png'), path.join(__dirname, '.vitepress', 'dist', 'Vuxel.png'));
fs.copyFileSync(path.join(__dirname, 'favicon.ico'), path.join(__dirname, '.vitepress', 'dist', 'favicon.ico'));

console.log('Assets copied successfully!');