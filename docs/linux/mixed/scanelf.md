# scanelf

##### identify exported sonames in a path

   scanelf  nobanner recursive quiet soname format "+S#f"

##### identify NEEDED sonames in a path

   scanelf  nobanner recursive quiet needed format "+n#F" $1 | tr ',' '\n' | sort -u

##### identify exported sonames in a path

   scanelf  nobanner recursive quiet soname format "+S#f"

##### identify NEEDED sonames in a path

   scanelf  nobanner recursive quiet needed format "+n#F" $1 | tr ',' '\n' | sort -u
