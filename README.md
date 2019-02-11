# j2cli-docker
Simple docker image for running j2 templating jobs

## Usage

Define a jinja2 template as usual with template variables corresponsing to environment variables. For example, if there is an environment variable called `ME=nihil0`, `j2cli` would process the template `Hello { ME }` and write `Hello nihil0` to stdout. 

To process a local file, say `myfile.jinja`, mount the file into the /build directory of the container, pass any variables you want to substitute with `-e` arguments to `docker run`.

```bash
echo "Hello {{ ME }}" > sayhello.jinja

docker run -it -v /path/to/sayhello.jinja:/build/template.jinja -e ME=nihil0 nihil0/j2cli 

# Hello nihil0
```


