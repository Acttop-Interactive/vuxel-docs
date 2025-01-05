import { defineConfig } from 'vitepress'

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "Vuxel",
  base: "/vuxel-docs/",
  description: "A lightweight, component-based UI framework for Roblox",
  head: [['link', { rel: 'icon', href: '/vuxel-docs/favicon.ico' }]],
  cleanUrls: true,
  themeConfig: {
    search: {
      provider: 'local'
    },
    logo: '/Vuxel.png',
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Getting Started', link: '/docs/gs/introduction' },
      { text: 'Core Concepts', link: '/docs/core/component-properties' },
      { text: 'Reference', link: '/docs/ref/state' }
    ],
    sidebar: [
      {
        text: 'Getting Started',
        items: [
          { text: 'Introduction', link: '/docs/gs/introduction' },
          { text: 'Installation', link: '/docs/gs/installation' },
          { text: 'Creating an Application', link: '/docs/gs/create' },
          { text: 'Conclusion', link: '/docs/gs/conclusion' },
        ]
      },
      {
        text: 'Core Concepts',
        items: [
          { text: 'Component Properties', link: '/docs/core/component-properties' },
          { text: 'Component Structure', link: '/docs/core/component-structure' }
        ]
      },
      {
        text: 'API Reference',
        items: [
          { text: 'State', link: '/docs/ref/state' },
          { text: 'Components', link: '/docs/ref/components' },
          { text: 'References', link: '/docs/ref/references' },
          { text: 'Event Handling', link: '/docs/ref/events' },
          { text: 'Hooks', link: '/docs/ref/hooks' },
          { text: 'Utility Functions', link: '/docs/ref/utility' },
          { text: 'Animations', link: '/docs/ref/animations' },
          { text: 'Style (BETA)', link: '/docs/ref/style' },
        ]
      },
      {
        text: 'Exemples',
        items: [
          { text: 'A Simple Button', link: '/docs/ex/button' },
          { text: 'Counter Application', link: '/docs/ex/counter' },
        ]
      }
    ],
    socialLinks: [
      { icon: 'github', link: 'https://github.com/Acttop-Interactive/vuxel' }
    ],
  }
})
