---
# https://vitepress.dev/reference/default-theme-home-page
layout: home

hero:
  name: "Vuxel"
  tagline: "A lightweight, component-based UI framework for Roblox"
  image:
    src: /Vuxel.png
    alt: Vuxel
  actions:
    - theme: brand
      text: Get started
      link: /docs/gs/introduction
    - theme: alt
      text: Learn more
      link: /docs/ref/state

features:
  - title: Component-based
    icon: 🗃️
    details: Vue.js-inspired component-based structure, define complex UIs using declarative templates and nested structures.

  - title: State Management
    icon: 📖
    details: State management and Computed properties that enable dependency tracking and memoization.

  - title: Declarative Animation
    icon: 🕺
    details: Built-in support for animations. Create smooth, tween-based animations for UI elements with a single function.
---