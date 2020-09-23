---
title: How to Live Stream your Church Service from Home
description: How to live stream a church service to Facebook Live while at home on lockdown.
tags: church, tech, software
image: /images/livestream/my-setup-ff9f3ed3.jpg
---

<img class="hero" src="/images/livestream/my-setup.jpg" />

With the Movement Control Order (partial-lockdown) in place in Malaysia and elsewhere, meeting up as a group in church to stream to Facebook Live straight from your Facebook mobile app is not really an option anymore (**you shouldn't, really, #stayhome**).

Fortunately, consumer technology has matured by leaps and bounds and there are other viable solutions. While this guide tries hard to make it possible for anyone to achieve a livestream, in practice you probably need to be a bit comfortable tinkering with some hardware and software, so share this blog post with the technical people at your church.

## Options

There are a couple of viable solutions for this:

1. **Pre-record everything and edit/stitch the video together.** This requires video editing skills that is beyond the scope of this blog post. You can then upload the edited video to Facebook / YouTube on Sunday morning (which one depends on your church's social media strategy. Most churches will have a Facebook page, not YouTube.) This is the least risky solution, but it does not have the element of "live". People will know it is not live, so there is less of an urgency to "attend church together" online. However, it is a very viable option that should not be discarded too soon. You can even use the OBS setup described below to stream your pre-recorded video live, or even mix and match what parts are actually pre-recorded!
2. **Pay Zoom** US$15/month to get past their 40-minute limit (with a 100 pax meeting limit)<strike>, but you will also need to add an additional $40/month for their **Webinar** (100 pax) feature, which allows you to allow anyone to view the "meeting" without joining the meeting (public link). Unfortunately, to go beyond 100 pax, you need to pay $140/month to get the Webinar to support up to 500 pax. You can then share the live meeting to as an url, or embed it on your church website</strike>. If your church is way less than 100 pax, and you can teach everyone how to download Zoom and register for an account, then your problem may be solved with just $15/month (just be sure to mute the congregation). **UPDATE:** You can [configure Zoom](https://support.zoom.us/hc/en-us/articles/115000350406-Streaming-a-Meeting-or-Webinar-on-Facebook-Live) to **stream your Meeting to Facebook Live or YouTube** without needing the Webinar add-on.
3. **Multiple Facebook Live sessions from multiple homes**. Your worship leader goes live, then ends the stream. Your pastor then goes live in a separate live stream. This is not ideal for obvious reasons, but it sort of works if you are short on technical help. You will kinda lose the flow, so maybe you wanna say, "We will be back at so and so time for the sermon, take a short break." (Similar for **YouTube Live**)
4. **Single Facebook Live session from one person's home**. This works if your preacher or someone in your preacher's home can lead worship acapella-style or with instrument, and then subsequently continue on to the sermon bit in the same stream. A drawback is that people get to see less faces on screen, and this may be a season where people just want to see more faces. But you can still get creative. The preacher can stream solo next to a TV, and connect that TV to not just his slide deck but also do conference calls with others via the TV. (Similar for **YouTube Live**)
5. **Use [OBS](https://obsproject.com/)** (free and open source software used for video recording and live streaming) to stream your continuous Zoom (if you paid $15/month) or Hangouts Meet (if you have GSuite) or Hangouts (consumer grade) meeting to Facebook Live (or Youtube Live), while switching the focus on different people seamlessly. As an added bonus, you can even super-impose lyrics slides in the video inset (or have the lyrics take up the entire screen). In this blog post, I will focus on how to do this, since this is the most technically challenging, but it arguably produces the most professional results, with the "live" effect.

Above list is not exhaustive. Let me know your setup and I'll add it to the list!

**Important Note:** You should figure out what requirements you have for the live stream, what are dealbreakers and what are not. The solution can be as complicated as you want, but you should generally err on the side of simplicity, as long as it meets your requirements.

## Hardware Requirements

Some hardware that you might need:

1. A **mid-to-advanced range laptop/desktop** that can handle the high CPU usage when streaming. I am on a Mid-2014 15" Retina MacBook Pro (2.5 GHz Quad-Core Intel Core i7, 16GB RAM with an NVIDIA GeForce graphics card). This is pretty much the top of the line but I suspect several notches lower would be able to do the job, subject to your own testing.
2. **1-2 external monitors**, ideally one for PowerPoint display and another to display the conference meeting. The laptop monitor will be used to show OBS and to do other "control center" stuff. 1 external monitor might also be enough (explored below).
3. **Mobile phones, tablets or laptops** (with good webcam) that are decent enough for video recording, one for the worship leader (with mucisian), and another for the preacher. iPhones 6 and above pass this requirement easily. Ideally you can get a **shotgun microphone** to attach to the phone/tablet, or a **USB microphone** to attach to the laptop with webcam. Ideally also, you have tripods to hold this up to sufficient height, else you can always hack together something (a pile of books, chair on a desk, etc.). Links to some reasonable mic options are found below.
4. Optional but recommended: **A cooling device** to cool your laptop (external fan for laptop). It may get really hot.
5. Optional but recommended: An **Ethernet adapter** to connect your laptop directly to Ethernet cable (skip the WiFi).

## Live Stream Setup

In this section, I will focus on how to setup OBS for the live stream. Your setup may differ, but for pedagogical reasons I will just explain my exact setup (using Mac) and we can explore variants later.

OBS is a desktop-based software that basically captures your screen(s) and your computer audio all at the same time, and channels it somewhere else (Facebook Live, YouTube Live, Twitch, etc.). You can even just use OBS to do a video recording, without streaming live. In our setup, we will capture what is shown on the two external monitors as well as computer audio, and mix them together into a stream, which OBS will then send to Facebook Live.

One monitor will be used just to show PowerPoint slides, while the other monitor will be used to show a conference call. The worship leader, elder, pastor, whoever needs to be part of the service will dial in to this conference call. OBS is just recording everything as it happens.

### Basic Setup

1. Connect your computer directly to your modem via Ethernet. Shut off your WiFi to prevent your computer from using WiFi
2. Turn off all unnecessary computer programs running in the background. Quit everything that is non-essential to the stream.
3. Plug in your two external monitors, go to Settings > **Displays** > Arrangement, and arrange your displays like the following. Notice that the top white bar belongs to the laptop screen. This is the primary screen.
   <img src="/images/livestream/display-arrangement.png" />

### Sound Setup

The stream should hear everything you hear. So in order for you to do that we need to be able to channel what you hear into OBS. To achieve that you need to do the following:

1. Download and install **[iShowU Audio Capture](https://support.shinywhitebox.com/hc/en-us/articles/204161459-Installing-iShowU-Audio-Capture-Mojave-and-earlier-)**. The install takes awhile... (Unfortunately on the Mac we need this 3rd party software to channel the audio in Mac elsewhere, because it is not natively supported.)

2. Open **Audio Midi Setup** on Mac, and **create a Multi-Output Device**. select **iShowU Audio Capture** as the **Master Device**. Configure as shown below:
<img src="/images/livestream/audio-midi-setup.png" />
Essentially what this does is channel your audio output into **both** iShowU Audio Capture and the Built-in Output (your headphones, if you like).
**UPDATE:** This step probably isn't necessary if you use OBS to output monitor audio (below)

3. Open Settings > **Sound** > Output. Select **Multi-Output Device** as the device for sound output to actually use it.
<img src="/images/livestream/sound-settings.png" />
**UPDATE:** This step probably isn't necessary if you use OBS to output monitor audio (below)

4. In my particular setup, I use Hangouts Meet (terrible name, I will just call it Google Meet) because Zoom requires a paid account to go beyond 40 minutes (officially), while I am already a paid GSuite user which gives me free use of Google Meet. In Google Meet, once you join there's a Settings dialog. Look for it and configure to the following, i.e. select **iShowU Audio Capture** in Speakers. If you leave it as Multi-Output Device it will cause echo, so don't. It should be similar for Zoom. (**Note:** If you leave it in this setting without completing the following steps and have OBS open at the same time, you won't be able to hear anyone on the call! Common mistake, please keep in mind!)
<img src="/images/livestream/meet-settings.png" />

5. Open OBS, go to Settings > Audio. Configure **iShowU Audio Capture** as Audio 2. Usually Audio 1 is reserved for your built-in microphone, but in this case you are the technical guy, (probably) nobody wants to hear you in the stream, so might as well disable it just to be safe. Leave everything else as it is.
<img src="/images/livestream/obs-sound-settings.png" />

6. Open up Mic 2's Advanced Audio Properties:
<img src="/images/livestream/advanced-audio-settings.png" />

7. Select **Monitor and Output** in Audio Monitoring. The purpose of this is so that OBS can channel back what it receives from **iShowU Audio Capture** back into the Monitor (your headphones) in addition to the Output, so that you can actually hear what your audience is hearing. Crucial, isn't it?
<img src="/images/livestream/monitor-and-output.png" />

8. Open up Mic 2's Filters:
<img src="/images/livestream/filters-setup.png" />

9. You can add **Noise Suppression** and **Compressor**, if you like. As you adjust, the incoming sound will change accordingly so you know the effects of what you are adjusting. But I think it is also fine to not have any filters.
<img src="/images/livestream/audio-filters.png" />

### Facebook Setup

1. Go to your church's Facebook page and click on "Live"
<img src="/images/livestream/fb-page-live.png" />
1. You are now shown Facebook's new producer page. Copy the (persistent) stream key (**1** in image) and paste it into OBS (Settings > Stream).
<img src="/images/livestream/fb-producer-settings.png" />
<img src="/images/livestream/fb-stream-key.png" />
3. I would recommend that you *uncheck* **End live video if stream stops** (**2** in image). This will ensure that if you get disconnected (a real possibility when all the internets are jammed by bored people at home), you can simply get back online and continue the stream, i.e. your Facebook Live video will not end prematurely. Important note: You have to uncheck this option before you start sending in any live feed. I think during my testing unchecking didn't work if I already started sending in my feed.

### OBS Sources Setup

So we have two external monitors. We need to configure both of them as Sources. Configure the left one as the "Presentation Display", and the right one as the "Conference Display".

1. In OBS, under Sources, add a Display Capture source.
<img src="/images/livestream/obs-display-capture.png" />
2. Configure the "Conference Display" source, pointing at the correct monitor (the right one). I would **uncheck Show Cursor** because no one really wants to see the mouse moving.
<img src="/images/livestream/obs-setup-display-capture.png" />
3. As you may be aware, in Google Meet there is this annoying perpetual UI on the top right and the bottom left that doesn't go away even when you move the mouse elsewhere. Zoom does not have this issue. You can manually transform the display to remove those parts:
<img src="/images/livestream/obs-scale-display.png" />
4. Repeat step 1-2 for the "Presentation Display". Since this is for slides, there is no need to scale the display.

### OBS Scenes Setup

Essentially, we want to have three scenes (you can name it whatever you want, but probably something clear so you won't get confused):

1. **Presentation Only** scene, which only displays the slides (go figure out such that PowerPoint displays slides on the left monitor when in presenter mode). [Sources: "Presentation Display"]
2. **Conference Only** scene, which only displays the conference meeting in the right monitor (Google Meet). You should enter Full Screen mode in your meeting, so that the conference meeting takes up the entire screen.  [Sources: "Conference Display"]
3. **Conference with Presentation** scene, which displays the conference meeting (right monitor) with the slides (left monitor) as an inset. [Sources: "Presentation Display" and "Conference Display"]

<img src="/images/livestream/obs-scenes.png" />

*Conference with Presentation* scene in shown below, where the "Presentation Display" is shown as an inset to the "Conference Display". You need to drag around the displays in this scene to position the "Presentation Display" inside the "Conference Display":
<img src="/images/livestream/obs-conf-with-pre.png" />

It really depends on what you want to achieve. Some churches may prefer showing just the slides while singing, in which you won't need the *Conference with Presentation* scene at all. In my case we only wanted this scene for the worship, because for the sermon part pastor will be speaking from right next to slides on his TV (*Conference Only* scene).

However, the *Presentation Only* scene is still useful to show a Welcome slide for the duration before your service actually starts. It is also useful for transitions when you need to click around in the conference meeting to switch between persons.

## Going Live

### Final Steps

1. There is a Studio Mode in OBS that allows you to preview the scenes that you want before showing it live. Super useful. Use it. Click on "Cut" or "Fade" to transition. Generally, you should Cut if you are trying to adjust the screen for the same scene. And Fade if you want to switch scenes.
<img src="/images/livestream/live-studio-mode.png" />
2. Click on **Start Streaming** to begin streaming. *This does not mean that you have gone live*, it just means that you have started sending your stream to Facebook. The Facebook producer page should also start showing what you are currently streaming.
<img src="/images/livestream/live-start-streaming.png" />
1. In the Facebook producer page, you may check "Publish as a test broadcast" so that only Page admins see it. From experience, church members like to watch and give feedback, after all they are quite free at home, so you can also uncheck this in your technical rehearsal, until you have become quite familiar with the setup.
<img src="/images/livestream/live-go-live.png" />
4. Add a description to your video post, and click on **Go Live**. The "Go Live" button will only be enabled if you have started streaming in your video.
5. Boom. **You are live!** If you want to play some background music, please don't play it off Apple Music or Spotify. Facebook will mute those parts of your stream due to copyright issues. Play something that is not strongly copyrighted. I'll leave it up to you to figure out what that means, or just don't play any background music.
6. You may also choose to embed your live view into your church website. Copy and paste the iframe code. While this is quick and easy, the iframe will not show up nicely in mobile (the video will fit nicely, but it will have a huge chunk of white space below it because the iframe height is hardcoded). If you are particular, you can go to [Facebook for Developers](https://developers.facebook.com/docs/plugins/embedded-video-player/) and figure out how to embed the video in a much nicer way.
<img src="/images/livestream/live-embed-code.png" />
7. Keep quiet while streaming. Otherwise Google Meet (or Zoom) might think you are trying to speak and pop up this bar. Which means you shouldn't sing along to the worship songs.
<img src="/images/livestream/live-keep-quiet.png" />
8. In the conference call, you may need to **present your screen** so that the worship leader can see it and stay in sync.
9. To end the stream, click on **Stop Streaming** in OBS. However, since we unchecked *End live video if stream stops* in Facebook, we need to manually click on **End Live Video/Stream** in Facebook producer page (the red button), otherwise the live video never ends!

## Variants

Let's explore some possible variants to this setup.

1. **Windows PC**. Everything above should have an equivalent in PC. I'll leave it as an exercise to you since I don't use PC.
2. **1 external monitor**. If you don't need the *Conference with Presentation* scene, then maybe you don't even need two monitors. If you need to show slides, you can use the single external display, then switch back to the conference view when done. Or you can just focus on the conference view and get others to share and present the slides. Whatever is best for your situation. Also, more monitors means more work for your laptop, so if your laptop is struggling, just reduce the monitor count.
3. **0 external monitors**. This is not recommended, but you can get OBS to record your current laptop screen, then switch to slides presenter mode while leaving OBS in the background. Then switch to conference mode. People may be able to see what you are doing, but is that really a problem?
4. **YouTube Live**. The same exact steps should apply, you just need to put the YouTube stream key and point the stream output to YouTube in OBS.
5. **Zoom**. Zoom should work just fine. However, I felt that audio and video quality is not as good as Google Meet. Particularly, if someone is streaming from a mobile device, the Zoom video won't take the entire width of my monitor. Plus, you need to remember to pay otherwise your meeting may get cut off at 40 minutes.
6. **Pre-recording**. With the OBS setup, you can even choose to pre-record some parts of the service, especially the worship session, to preserve the quality of the audio (because Zoom and Google Meet software are optimized for voice audio). Also, some members of the church who need to appear in the stream may not have a good internet connection at home. Mix and match OBS setup with pre-recording as you see fit.
7. By default, OBS uses the **x264** encoder (software-based). This will cause OBS to be quite CPU-intensive. In Settings > Output > Streaming > Encoder, you can switch to *Apple VT H264 Hardware Encoder* (if you have it) to save A LOT of CPU cycles (your CPU won't even break a sweat with this).

## Summary

Just as with any technical topic, there are many things that can go wrong with the setup. Therefore I would encourage you to have a **technical rehearsal** just to iron out the details. It is simply not optional.

It is also pretty stressful recording the stream because of the possibility that things can (and will sometime) go wrong. But hey, we are living in interesting times now.

Bulk up on coffee (and go to the bathroom) before going live.

### Licensing and Copyright

Regarding this issue, I'll just leave these two links here for your further reading and discussion.

1. [https://worshipmatters.com/2020/03/24/feel-free-to-live-stream-our-songs/](https://worshipmatters.com/2020/03/24/feel-free-to-live-stream-our-songs/)
2. [https://us.ccli.com/copyright-license/](https://us.ccli.com/copyright-license/)

Strictly speaking, even presenting PowerPoint lyrics of a song your church didn't write (who here does?) requires a CCLI license. I would say (and don't quote me), explore and consider CCLI license for the long term, but don't worry about it too much right now when you just want to make things work for your church.

### Links to some equipment
1. For the **shotgun mic** (for iPad/Android/iPhone), I got the [BOYA BY-A7H](https://www.lazada.com.my/products/i593972423.html) off Lazada. Well, make sure the device has an audio jack! (thanks, Apple). There is also a variant with the Lightning connector. Unfortunately if you use Lightning it means you can't use the mic and charge the phone at the same time without yet another adapter (grr, Apple). Unless you own an iPhone 11 and above, this shotgun mic should bring in a noticable improvement (I heard 11 has pretty good built-in microphone).
2. For the **USB mic**, I got a [Marvo Scorpion mic-03](https://www.lazada.com.my/products/i743466818.html).  The Blue Yeti would be the ideal mic for this one, but short on time and money now :P

Haven't used any of the mics above for a live round at time of writing (the sample video below did not use this, we'll find out next week), but it should be noticably better than using the defaults. You should start somewhere (without mics), then see if you need to ramp up that quality on the following Sunday. Needless to say, your recording devices should be on full battery (ideally plugged in) before going live.

You need to make sure the online store you buy from is still shipping. I would message them first to ensure this. Some shops are not shipping until the end of the movement control period.

To pass the mic from place to place each week (e.g. if you rotate worship leaders), you can try Grab's Delivery option (slightly pricey).

### Sample Output
A first try resulted in the following stream last Sunday (default laptop and mobile device mics):

<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v6.0"></script>
<div class="fb-video" data-href="https://www.facebook.com/ICatMK/videos/2532375660349592/" data-width="1280" data-show-text="true"><blockquote cite="https://developers.facebook.com/ICatMK/videos/2532375660349592/" class="fb-xfbml-parse-ignore"><a href="https://developers.facebook.com/ICatMK/videos/2532375660349592/">IC&#064;MK Sunday Service (22 Mar 2020)</a><p>IC&#064;MK Sunday Service (22 Mar 2020)

Good morning church, praise God for technology as it enables us to worship him together in this manner for this season. Indeed He does work all things together for the good of those who love Him, all for His glory alone.

Please stay on with us, we will be begin the service at 10.30am. Slides will be visible in the stream.

POST-Service links:
Zoom meeting: https://us04web.zoom.us/j/344087654
Discussion questions: https://drive.google.com/open?id=1QqVSUCw1IVoSuTwXmrjhRbdCUAaXKv_D</p>Posted by <a href="https://www.facebook.com/ICatMK/">International Church at Mont Kiara</a> on Saturday, 21 March 2020</blockquote></div>&nbsp;

Hope you have fun whilst serving your church community! If your church didn't manage to pull together a stream, you can join mine online at [icatmk.com/live](https://icatmk.com/live/) in the meantime. If you need to reach out to me for help or to ask questions, feel free to shoot me an email at ernsheong@gmail.com.

Cheers.