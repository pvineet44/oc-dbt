## OC-DBT

Pre-requisites:
- docker
- dbt (installation docs here https://docs.getdbt.com/dbt-cli/installation)

Steps: 
PLEASE ENSURE THAT YOU DONT HAVE A LOCAL POSGTRES INSTANCE RUNNING ON PORT 5432

1. Start the pg container
```
docker run --name pg_local_new1 -p 5432:5432 \
-e POSTGRES_USER=start_data_engineer -e POSTGRES_PASSWORD=password \
-e POSTGRES_DB=tutorial -d postgres:12.2
```
2. copy the profile to the .dbt directory in $HOME. This has all the connectivity details
```
cp profiles.yml ~/.dbt/
```

3. test - ```dbt debug```
5. import seed data from /data dir - ```dbt seed```
6. run transformations - ```dbt run```
7. test - ```dbt test```
dashboard (http://localhost:8080) - ```dbt docs generate && dbt docs serve```


### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
