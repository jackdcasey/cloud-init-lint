# Summary 

This tool wraps the `cloud-init devel schema` in a container, to allow linting on a non cloud-init system

The container reads stdin, writes it to a file then runs `cloud-init devel schema` on that file

# Example

```
cat ${file} | docker run -i cloud-init-lint
```

Valid:
```
Valid cloud-config file /tmp/template.yml
```

Invalid:
```
Cloud config schema errors: format-l3.c13: File /tmp/template.yml is not valid yaml. mapping values are not allowed here
  in "<byte string>", line 3, column 13:
    disable_root: true
```
