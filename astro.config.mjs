import { defineConfig } from "astro/config";

import icons from 'astro-icons';

import icon from 'astro-icon';

// https://astro.build/config
export default defineConfig({
  'site': 'https://gopesh-human.github.io',
  integrations: [icons(), icon()],
});