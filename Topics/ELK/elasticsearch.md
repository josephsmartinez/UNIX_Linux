# Getting started with Elastic Search indexing

## Sections

1. Introduction
2. Document Management and Analyers
3. Defining the Index Structure
4. Querying Elasticsearch
5. Real world project with: Logstash, Kibana, and Filebeat

### Keywords when searching

- PUT, will post JSON objects into elastic search  
- ***Elasticsearch does not support multiple 'types' for the same 'index'***
- ***The 'index' will be deprecated in Elasticsearch 7***  
- You can PUT items with new fields. Elasticsearch will handle the new fields in the `mapping section`

```
PUT /{index}/{type}/{id}
{
	"field" : "field",
	"field" : "field"
}
```

- HEAD, will return a URL status i.e. 404, 200, ..., etc
```
HEAD /index/type/id
```

---
- GET, returns the JSON object
Returns indexed object  
`GET /index/type/id`  
Returns the object structure
`GET /planes/`  
Returns the search  
`GET GET /homes/_search`  
---

- POST, will allow updating fields. **By default fields are immutable**
- `_update` is an API endpoint that will allow the updates to JSON
- `doc` is the source type (more information is needed)

```
POST /planes/jets/123/_update
{
  "doc" : {
    "make" : "F18R",
    "year" : "2000",
    "price" : "100000000",
    "model" : "M101-AX"
  }
}
```

- DELETE
- Types can not be deleted `/{index}/{type}/{id}`

## Text Analysis for Indexing and Searching

Text Analysis Example  
1. The thin lifeguard was swimming in the lake
2. Swimmers race with the skinny lifeguard in lake

### Analyzer Process  
- Remove Stop Words
- Lowercasing
- Stemming
- Synonyms

***1. Tokens 2. Analyzer***  
Configuration the index structure
```
{
  "setting" : {
    ...
  },

  "mapping" :{
    ...
  }
}
```

## Section 3 - Defining the Index Structure

- Only one mapping type
- Analyzers are not needed for numeric values
- ***The 'mappings' will be deprecated in Elasticsearch 7***  

General Structure:    
```
PUT /customers
{
  "settings": {
    "number_of_shards": 2,
    "number_of_replicas": 1
  },
  "mappings": {}
}
```

### Example:

We can declare the structure of the mapping for the object.   
```
PUT /customers
{
  "mappings": {
    "online": {
      "properties": {
       "gender":{
        "type": "text",
        "analyzer": "standard"
      },
      "age": {
        "type": "integer"
      },
      "total_spent": {
        "type": "float"
      },
      "is_new": {
        "type": "boolean"
      },
      "name": {
        "type": "text",
        "analyzer": "standard"
      }
    }
  }
  },
  "settings": {
    "number_of_shards": 2,
    "number_of_replicas": 1
  }
}
```

Now we enter the data into Elasticsearch
```
PUT /customers/online/123
{
  "name": "John Doe",
  "address": "310 Clark Ave",
  "gender": "female",
  "age": 34,
  "total_spent": 550.75,
  "is_new": false
}
```

Mapping can be set to `struct` or `false`.  
- If set to `false`, indexing field will be ignored
- If set to `strict`, indexing field will throw error
```
GET customers/_mapping/online
{
  "dynamic":"false"
}
```

Example:  
- The PUT below will throw an error because the mapping is current set to `strict`  
```
PUT /customers/online/123
{
  "name": "John Doe",
  "address": "310 Clark Ave",
  "gender": "female",
  "age": 34,
  "total_spent": 550.75,
  "is_new": false,
  "retired": true
}
```

## Analyers Testing and Types

```
POST _analyze
{
  "analyzer": "whitespace",
  "text":     "The quick brown fox."
}
```

[Testing Analyers](https://www.elastic.co/guide/en/elasticsearch/reference/current/_testing_analyzers.html)  

[Types of analyers](https://www.elastic.co/guide/en/elasticsearch/reference/current/analysis-analyzers.html)  


## Search DSL Query Context

- ***Query*** Context
- ***Filter*** Context

```
GET /courses/_search
{
  "query": {
    "match_all": {}
  }
}
```
More Complex Examples
```
GET /courses/_search
{
  "query": {
    "bool":{
    "must":[
    {"match": {"name": "computer"}},
    {"match": {"room": "c8"}}
    ]
  }
  }
}
```

```
GET /courses/_search
{
  "query": {
    "bool":{
      "must":[
        {"match": {"name": "accounting"}}
      ]

      ,"must_not": [
        {"match": {
          "professor.name": "bill"
          }
        }
      ],
      "should": [
        {"match": {
          "room": "e7"
        }
      }
    ],
    "minimum_should_match": 1
    }
  }
}
```

```
GET /courses/_search
{
  "query": {
    "multi_match": {
      "query": "accounting",
      "fields": ["name","professor.department"]
    }
  }
}
```

Match Phrase Prefix will allow the tokens to be search as partial words.
```
GET /courses/_search
{
  "query": {
    "match_phrase": {
      "course_description": "from the business"
    }
  }
}
```

```
GET /courses/_search
{
  "query": {
    "match_phrase_prefix": {
      "course_description": "from the busin"
    }
  }
}
```

We can query a range
```
GET /courses/_search
{
  "query": {
    "range": {
      "course_publish_date": {
        "gte": "2013-08-27"
      }
    }
  }
}
```

```
GET /courses/_search
{
  "query": {
    "bool": {
      "must": [
        {"match": {
          "name": "accounting"
        }}
      ],
      "must_not": [
        {"match": {
          "room": "e7"
        }}
      ],
      "should": [
        {"range": {
          "students_enrolled": {
            "gte": 10,
            "lte": 20
          }
        }}
      ],
      "minimum_should_match": 1
    }
  }
}
```
## DSL Fliter

##
