FROM metalstack/builder:latest as builder

FROM alpine:3.14

RUN apk add \
    ca-certificates \
    ipmitool
COPY --from=builder /work/bin/bmc-catcher /

CMD ["/bmc-catcher"]
