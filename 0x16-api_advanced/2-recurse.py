#!/usr/bin/python3
"""
Queries the Reddit API and returns a list containing
the titles of all hot articles for a given subreddit.
If no results are found for the given subreddit,
the function should return None.
"""
import requests as r


def recurse(subreddit, hot_list=[], count=0, after=None):
    sub_info = r.get(f"https://www.reddit.com/r/{subreddit}/hot.json",
                     params={f"count": count, "after": after},
                     headers={"User-Agent": "My-User-Agent"},
                     allow_redirects=False)

    if sub_info.status_code >= 400:
        return None

    hot_li = hot_list + [child.get("data").get("title")
                         for child in sub_info.json()
                         .get("data")
                         .get("children")]

    info = sub_info.json()
    if not info.get("data").get("after"):
        return hot_li

    return recurse(subreddit, hot_li, info.get("data").get("count"),
                   info.get("data").get("after"))
