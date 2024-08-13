#!/usr/bin/python3
"""
Queries the Reddit API and prints the titles of the
first 10 hot posts listed for a given subreddit.
"""
import requests as r


def top_ten(subreddit):

    sub_info = r.get(f"https://www.reddit.com/r/{subreddit}/hot.json?limit=10",
                     headers={"User-Agent": "My-User-Agent"},
                     allow_redirects=False)
    if sub_info.status_code >= 300:
        print('None')
    else:
        [print(child.get("data").get("title"))
         for child in sub_info.json().get("data").get("children")]
