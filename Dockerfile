FROM golang:1.17 as build

WORKDIR /app
COPY . . 
RUN CGO_ENABLED=0 go build -0 server main.go

FROM alpine:3.12
WORKDIR /app
COPY --from=build /app/server .
CMD["./server"]