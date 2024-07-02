pnpm exec tsc -p tsconfig.node.json 
pnpm exec tsc -p tsconfig.browser.json
pnpm exec esbuild src/client/wetty.ts --bundle --platform=browser --sourcemap --minify --outdir=build/client $@
pnpm exec sass src/assets/scss:build/assets/css --load-path=node_modules -s compressed --no-source-map
cp -r src/assets/xterm_config src/assets/favicon.ico build/assets
