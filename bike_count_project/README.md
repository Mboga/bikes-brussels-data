# Bike Count Project

## dbt
1. Set up the project 
```dbt init bike_count_project```

2. Test connection
```dbt debug```

3. Create a Source file: 'sources.yml' that defines sources of your data
```models/sources.yml```

4. Create a staging model (silver layer)
```models/staging/stg_bike_counts.sql```

5. Create a Marts model: (Gold) apply business logic and aggregatons to create tables ready for analysis
```models/marts/daily_bike_counts.sql```

6. Run the project
```dbt run```

7. Create dependency files: 'packages.yml' then run
``` dbt deps```

8. Define Tests and Clearly document the columns in ```models/schema.yml```:

9. Run the tests:

```dbt tests```

10. To generate the documentation run:
```
dbt docs generate
dbt docs serve
```
You can then access the docsfrom your browser, navigate to: ```http://localhost:8080```

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
