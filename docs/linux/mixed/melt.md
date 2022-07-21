# melt

##### Play a video and show timecode ovelray

   melt  dvgrab-010.m2t meta.attr.titles=1 meta.attr.titles.markup=#timecode# -attach data_show dynamic=1

##### Add fade in/out to first & last 25 frames of a video

   melt  colour:black out=24 vid.mp4 -mix 25 -mixer luma colour:black out=24 -mix 25 -mixer luma -consumer avformat:out.mp4

##### Create a transition between two videos

   melt  a.mp4 out=49 -track -blank 24 b.mp4 -transition luma in=25 out=49 a_track=0 b_track=1 -consumer avformat:out.mp4

##### Add fade in/out to first & last 25 frames of a video

   melt  colour:black out=24 vid.mp4 -mix 25 -mixer luma colour:black out=24 -mix 25 -mixer luma -consumer avformat:out.mp4

##### Create a transition between two videos

   melt  a.mp4 out=49 -track -blank 24 b.mp4 -transition luma in=25 out=49 a_track=0 b_track=1 -consumer avformat:out.mp4
