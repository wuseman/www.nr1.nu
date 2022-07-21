# base64

##### I hate `echo X | Y`

   base64  -d <<< aHR0cDovL3d3dy50d2l0dGVyc2hlZXAuY29tL3Jlc3VsdHMucGhwP3U9Y29tbWFuZGxpbmVmdQo=

##### Create a bunch of dummy text files

   base64  /dev/urandom | head -c 33554432 | split -b 8192 -da 4  - dummy.

##### I hate `echo X | Y`

   base64  -d <<< aHR0cDovL3d3dy50d2l0dGVyc2hlZXAuY29tL3Jlc3VsdHMucGhwP3U9Y29tbWFuZGxpbmVmdQo=

##### Create a bunch of dummy text files

   base64  /dev/urandom | head -c 33554432 | split -b 8192 -da 4  - dummy.
