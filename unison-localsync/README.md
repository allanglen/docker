# unison-localsync

An image that uses unison to provide local synchronization between two mounted volumes.

## Usage

When creating a container three volumes must be mounted:

* `/root/.unison` - provides the unison configuration file ([example](default.prf)) and location for tracking sync state (root archive files)
* `/1` - provides the first root directory to sync
* `/2` - provides the second root directory to sync

Example:
```
docker run -v /config:/root/.unison -v /root1:/1 -v /root2:/2 allanglen/unison-localsync
```

## Environment

```OPTIONS``` - Options to pass to the unison command (ex. -repeat watch)
