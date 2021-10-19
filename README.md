# Pandoc (eisvogel)

## Using with docker-compose.yml

1. Create `input.md` ([example here](https://github.com/patrikfejda/pandoc/blob/main/template/input.md))

2. Create `docker-compose.yml`
```md
version: '3.3'

services:
  pandoc:
    image: patrikfejda/pandoc:latest
    volumes:
      - .:/data 
    command: |
      --pdf-engine xelatex
      --listings
      --template eisvogel --toc
      input.md -o output.pdf
```

3. place `input.md`and `docker-compose.yml` in the same folder

4. cmd: `docker-compose up`

5. Out.pdf should look like [this](https://github.com/patrikfejda/pandoc/blob/main/template/output.pdf)

