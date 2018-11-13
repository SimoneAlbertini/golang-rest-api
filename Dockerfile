FROM scratch
# ADD ca-certificates.crt /etc/ssl/certs/ # if SSL certificates are needed
ADD main /
CMD ["/main"]
