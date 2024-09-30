const fs = require('fs');
const path = require('path');

const src = path.join(__dirname, 'Vuxel.png');
const dest = path.join(__dirname, '.vitepress', 'dist', 'Vuxel.png');

fs.copyFileSync(src, dest);
console.log('Vuxel copied to .vitepress/dist');