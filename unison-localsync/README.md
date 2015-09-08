# unison-localsync

An image that uses unison to provide local synchronization between two mounted volumes.

## Usage

When creating a container three volumes must be mounted:

* `/config` - contains the unison configuration file ([example](config/default.prf))
* `/1` - contains the first root directory to sync
* `/2` - contains the second root directory to sync

Example:
```
docker run -v /config:/config -v /root1:/1 -v /root2:/2 allanglen/unison-localsync
```

#### Note
When unison is executed the first time it will generate archive files for each root to track the state of the synchronization.  If the container is always run from an image this state will be re-initialized each time the container is created and executed.

To improve the performance of update detection on subsequent executions it is recommended to re-use the container (i.e. `docker start`).  The `/root/.unison` volume specified in the [Dockerfile](Dockerfile) persists the root archive files in the container.

## Environment

```REPEAT``` - Repeat the synchronization every $REPEAT seconds.
