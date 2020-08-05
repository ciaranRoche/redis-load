# Redis Load Tester

hackiness for quickly generating data in redis

### Usage Openshift 
``` 
oc create -f redis-load.yaml -n <<your namespace>>
oc process redis-load-template -p HOST=<<redis host>> -p PORT=6379 -p ENTRIES=<<no of entries to create>> -p USERS=<<no of concurrent user>> | oc create -f - 
```

### Clean up Openshift
``` 
oc delete deployment -n <<your namespace>>
oc delete templates redis-load-template -n <<your namespace>>
```


