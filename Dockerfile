FROM nginx:1.27-alpine

# Unity WebGL build (uncompressed) — served as static files
COPY index.html manifest.webmanifest ServiceWorker.js /usr/share/nginx/html/
COPY Build/ /usr/share/nginx/html/Build/
COPY StreamingAssets/ /usr/share/nginx/html/StreamingAssets/
COPY TemplateData/ /usr/share/nginx/html/TemplateData/

EXPOSE 80
