FROM docker-registry.zende.sk/zendesk/ruby@sha256:521ea08eb8358da2e375b5c69b09d47886cfd724b8580737bb0bcb78b7c4f856

ENV PORT 3000
CMD ["ruby", "-rwebrick", "-e", "WEBrick::HTTPServer.new(Port: ENV['PORT'], DocumentRoot: '/', DoNotReverseLookup: true).start"]
