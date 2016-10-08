# chaosseeker
This will randomly kill Kubernetes pods

## Configuration

A few environment variables are available for configuration:

* `DELAY`: seconds between selecting and deleting a pod. Defaults to `30`.
* `NAMESPACE`: the namespace to select a pod from. Defaults to `default`.
* `SERVER`: the kubernetes API server, incl protocol and port. *required*
* `TOKEN`: the bearer token. *required*

## Usage

Run this with something like `docker run -ti -e TOKEN=somesting -e SERVER=https://192.168.99.100:8443 -e NAMESPACE=uptimeidontcare-dev goern/chaosseeker`
