### About

This is a docker file to create build environment for redmine plugin test.
Redmine's source is stored at /tmp/redmine.
You can change revision (tag) with hg up.

```
# cd /tmp/redmine
# hg up default     # Redmine's trunk
# hg up 3.3-stable  # 3.3 stable
# hg pull -u        # pull after switching branch
```


