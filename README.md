Concourse Version Resource
==========================

This docker image implements a
[concourse resource](https://concourse.ci/implementing-resources.html) for
time based versioning. A version string consists of a ISO 8601 extended format
datetime with colons (`:`) converted to minus (`-`). Timezone is UTC and the
version string is suffixed with 'Z' accordingly.

`in`
----

The resource directory is populated with the following files:

- `version`: Contains the versionstring.
- `timestamp`: Contains the ISO 8601 datetime string.
- `properties.sh`: Sets the `VERSION` and `TIMESTAMP` shell variables.
- `properties.json`: Contains a json object with `version` and `timestamp`
   properties set.

`out`
-----

Always returns a new version response, can be used to reset the version within
the pipeline.

`check`
-------

Returns an array with the same output as `out`, except if the checked version
string is now or in the future, then it returns an empty array.
