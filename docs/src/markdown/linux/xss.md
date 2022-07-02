# xsshacking

Cross Site Scripting detection suite equipped with parsers
XSStrike analyses the response with multiple parsers and then crafts payloads
that are guaranteed to work by context analysis integrated with a fuzzing engine

### Documentation

* ![XSStrike Documentation](https://github.com/s0md3v/XSStrike/wiki/Usage)

### Classical GET
```python
python xsstrike.py -u "http://example.com/search.php?q=query"
```

### POST
```python
python xsstrike.py -u "http://example.com/search.php" --data "q=query"
```

### Path payloads
```python
python xsstrike.py -u "http://example.com/search/form/query" --path
```

### Crawl and test
```python
python xsstrike.py -u "http://example.com/page.php" --crawl
```

### Load payloads from file and test them
```python
python3 xsstrike.py -u "http://example.com/page.php?q=query" -f /path/to/file.txt
```

### Find hidden parameters
```python
python xsstrike.py -u "http://example.com/page.php" --params
```