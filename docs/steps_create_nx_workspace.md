#Steps to create the workspace

download
```bash
npx create-nx-workspace@^12.0.0

yarn add @nrwl/cypress@^12.0.0 @nrwl/jest@^12.0.0 @nrwl/linter@^12.0.0 --dev
yarn add @nx-plus/vue --dev
yarn add @nrwl/nest --dev

nx g @nx-plus/vue:app app
nx g @nrwl/nest:app api

nx migrate latest --run-migrations 
```