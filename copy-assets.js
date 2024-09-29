const fs = require('fs');
const path = require('path');

const src = path.join(__dirname, 'Vuxel.ico');
const dest = path.join(__dirname, '.vitepress', 'dist', 'Vuxel.ico');

fs.copyFileSync(src, dest);
console.log('Vuxel.ico copied to .vitepress/dist');