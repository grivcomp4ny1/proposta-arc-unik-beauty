FROM nginx:1.27-alpine

COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY index.html /usr/share/nginx/html/index.html
COPY assets /usr/share/nginx/html/assets
COPY Metodo-ARC-UNIK-Beauty-90-dias.pdf /usr/share/nginx/html/Metodo-ARC-UNIK-Beauty-90-dias.pdf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
