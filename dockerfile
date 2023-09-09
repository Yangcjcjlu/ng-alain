# docker build -t my-nginx .
# docker run -d -p 4200:4200 my-nginx

FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf

COPY dist /dist

EXPOSE 4200

CMD ["nginx","-g","daemon off;"]
