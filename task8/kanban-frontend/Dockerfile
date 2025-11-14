ARG NODE_VERSION=14
ARG NGINX_VERSION=alpine3.22

FROM node:${NODE_VERSION} AS builder

WORKDIR /app

COPY package*.json ./
RUN npm install --legacy-peer-deps
#RUN --mount=type=cache,target=/root/.npm npm ci

COPY . .
RUN npm run build --prod


FROM nginxinc/nginx-unprivileged:${NGINX_VERSION} AS runner

USER nginx

COPY default.conf /etc/nginx/conf.d/nginx.conf

COPY --chown=nginx:nginx --from=builder /app/dist/kanban-ui/ /usr/share/nginx/html

EXPOSE 8080

ENTRYPOINT ["nginx", "-c", "/etc/nginx/nginx.conf"]
CMD ["-g", "daemon off;"]


# FROM node:14 AS build
# WORKDIR /app

# COPY package*.json ./
# RUN npm install  

# COPY . .
# RUN npm run build --prod

# FROM nginx:stable-alpine
# COPY default.conf /etc/nginx/conf.d/default.conf
# COPY --from=build /app/dist/kanban-ui/ /usr/share/nginx/html/


# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]
