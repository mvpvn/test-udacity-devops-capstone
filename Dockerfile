FROM bhgedigital/envsubst:v1.0-alpine3.6 as builder

ARG BUILD_ID
#ENV BUILD_ID=1
COPY ./src ./src
RUN mkdir ./build
RUN envsubst < ./src/index.html > ./build/index.html

FROM nginx:1.21.6
COPY --from=builder ./build /usr/share/nginx/html