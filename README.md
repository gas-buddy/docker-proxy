# docker-proxy

We run a set of services in docker containers in development. This allows developers to bring up all the services required to run our "platform" with a single command. Sometimes it's easier to develop inside a container, but other times (I'm looking at you debugger) it's easier to run on your desktop directly. Rather than have to make a very large number of host entries and port forwards,
you can simply redirect your service calls through this proxy. It will take three headers: Host, Port, Protocol and
forward your request inside the docker networking environment to the specified protocol://host:port, of course currying any headers, query string arguments, and bodies.

## Useful TCP ports:

* 8080 - nginx proxy port