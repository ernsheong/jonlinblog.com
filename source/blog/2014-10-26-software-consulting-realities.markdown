---
title: Software Consulting Realities
tags: software
---

I left my previous job and set out to do software consulting on my own around mid-August this year.
People call it freelancing (to my annoyance), but I call it consulting. It's serious business. I'm not sitting at home working in my pajamas.
I sublet an office room in SS2 and I check in to work everyday like any other worker bee.
READMORE

It's been two months so I just want to share the realities of software consulting, and other lessons picked up along the way:

1. **All the client cares about is the visible product.** He does not care if you took the time to do proper
testing, did refactoring to ensure good code quality and maintainability, or set up server automation. But these things, while they do not
contribute to the visible product in terms of added features, are absolutely necessary in the long term. The client
might become frustrated at the perceived lack of progress, while you are actually doing stuff that makes the future stuff possible.
Manage their expectations and help your clients understand how software works. Technical debt must be paid. If not paid earlier, the interest will cripple later.

2. **Say no to fixed-price jobs.** As far as possible, try to avoid quoting a final figure for the job. Clients don't understand
software complexity, and sometimes they demand so many features without realizing that it takes a lot to build server infrastructure
and client apps at the same time as part of a single project. Try to work on an hourly rate, and give the client an estimated cost instead. I have come
to a point that unless I am thoroughly familiar with the job domain, or doing a relatively small job, I will never quote a single figure for the job. I don't care
if they go elsewhere, as I don't want to be trapped putting in more hours into writing software that is virtually costing me a loss.
Clients don't realize that software is not a finish-and-submit type of thing. There needs to be ongoing maintenance and optimizations, and a one-time pricing just does not cut it.

3. **Ground-up software is mentally draining.** Writing software for clients from scratch can be a bore. Each time a new client comes along wanting a new web or mobile app,
I have to go back to the drawing board and start everything from scratch again. It's draining and tiring. And when I stop working or putting in those
hours, I stop generating income. This has caused me to start exploring product development.

4. **Bite-sized tasks.** Software is just plain hard. It's a time consuming venture to even build something that sounds trivial. Think hundreds of hours.
Trying to think about the scope of the project can often be crippling. My small mind can only focus on one thing at a time.
It is thus helpful to always break down the project into a list of bite-sized tasks. I use Pivotal Tracker's point system
to help me break down my tasks. This helps me keep the project going no matter how overwhelmed I feel. It's always one task at a time.
Feature stories really help me focus on the small picture while I build the bigger picture. And then somehow, as the weeks pass, the project morphs into a reality.

5. **Write cost-efficient tests.** Testing is important, but costly. Testing alone can potentially take the same amount of time as writing application code. But it is absolutely important to write cost-efficient
tests. Consider the test of loading a page in an application. The success of this very simple test guarantees that
the many variables that are needed for the page to render is actually behaving properly (no annoying nil cases). I have abandoned test-driven development
in favor of writing code first and testing later. It's hard enough writing code that gets the feature done, yet
alone writing a test upfront for code that I don't even know how to write yet. When I feel that the app is getting a bit too
complex for my mind to comprehend, I write tests to calm my nerves. It is just absolutely necessary for my sanity. Write tests, make it your
friend, but don't overdo it unless you are employed full-time to do this. Like I said, clients don't care about tests so it is important to write
only cost-efficient tests if you are consulting.

6. **More hours is not the solution.** When I started out I tried to squeeze in as much work time as possible before dinner comes (I seldom work nights).
But I realized that in software it is not about putting in more hours.
Sometimes it is much better to take a break and solve the problem later instead of sitting at the computer longer.
It's just being human. Sometimes my most productive days were days when I slept in and somehow managed to do all the things that I was supposed to do.
Software development is a marathon with some sprints. Sprinting all the time leads to burnout.
(Speaking of timing, I'm pretty strict about it. I use a timer to time when I am working on a client project. I stop the timer when going to the bathroom or goofing off on Facebook.
I realize that it is quite hard to actually achieve 5-6 billable hours a day. Try timing yourself at work. 30 billable hours per work week is an achievement.)

7. **It's a lonely road.** It can be rather lonely. I sit down at the computer all day by myself.
Despite my introversion, I feel lonely at the office. And no, it doesn't help
that I am also rather unsuccessful with the ladies. Typical [code monkey](https://www.youtube.com/watch?v=kWrjYdD0Tg0) syndrome.
Software engineers with steady girlfriends should consider themselves blessed. I have strongly considered going back to the working world in order to overcome this loneliness. It remains to be seen how long I can stick around doing this.

8. **Say no to perfectionism.** Mark Zuckerberg's mantra is my desktop background: *"Done is Better than Perfect."* As a perfectionist, I am forced to find a balance for the sake of the deadline. However, I seldom compromise on quality. It must be
"good enough", and not "crap", no matter what the deadline is. The challenge is greater these days as mere functionality is not good enough — the app's user interface has to be up to some standard.

9. **Change, change, change.** Clients get feedback from a few users and then tell you to implement all of them. They rarely think and say, "Is this really
something that is necessary for my product?" They just like to add, add, modify. It's frustrating to deal with such clients, because change is expensive.
It's okay if I am being paid an hourly rate, but it is not okay if I am being paid a fixed price. From day one, the software has to be built for change. It will happen.

Considering the same path? I'd say it's no small feat. But you will have much more control over what you work on, and that's a dealbreaker for me. Life is short, so I simply can't work on things that I don't believe in (which was why I left my previous job).
Discipline is key. Having an office is key for me. As Woody Allen said, *"Eighty percent of success is showing up."*
