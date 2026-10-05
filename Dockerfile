FROM nginx:1.27-alpine

# Railway (and similar hosts) inject $PORT; default to 80 elsewhere.
# The nginx image renders /etc/nginx/templates/*.template with envsubst at startup.
ENV PORT=80
COPY nginx.conf.template /etc/nginx/templates/default.conf.template

# Unity WebGL build (uncompressed) — served as static files
COPY index.html manifest.webmanifest ServiceWorker.js /usr/share/nginx/html/
COPY Build/ /usr/share/nginx/html/Build/
COPY StreamingAssets/ /usr/share/nginx/html/StreamingAssets/
COPY TemplateData/ /usr/share/nginx/html/TemplateData/

EXPOSE 80
