# ruby-stats
![A part of our Admin Panel that we use internally](https://cloud.githubusercontent.com/assets/973265/7853394/2e0b03b6-052b-11e5-97cf-7c330eaa78e6.png)

## DESCRIPTION:
Ruby Stats helps you get your system statistics whenever you need it. We use it internally to monitor our Servers and send it to our monitoring servers in the cloud. This Gem currently supports Ubuntu and Mac. Unfortunately we have no plans to bring it for Windows.

Here are some of the statistics you can get about your system:
- CPU Usage
- CPU load
- Memory Usage
- Disk Statistics (Free Space, etc)
- TCP/UDP Packet Exchanges 
- Gets some data about the processes that are running

## Getting Started

gem install usagewatch_ext

```ruby
require 'usagewatch_ext'

usw = Usagewatch

usw.uw_diskused
usw.uw_diskused_perc
usw.uw_cpuused
usw.uw_tcpused
usw.uw_udpused
usw.uw_memused
usw.uw_load
usw.uw_bandrx
usw.uw_bandtx
usw.uw_diskioreads
usw.uw_diskiowrites
usw.uw_cputop
usw.uw_memtop
usw.uw_apacheconns
```

## Example

```bash
Run:

linux_example.rb

Example Output:

11.56 Gigabytes Disk Used
7.0% Disk Used
0.25% CPU Used
30 TCP Connections Used
0 UDP Connections Used
43% Active Memory Used
0.01 Average System Load Of The Past Minute
0.008 Mbit/s Current Bandwidth Received
0.2 Mbit/s Current Bandwidth Transmitted
0/s Current Disk Reads Completed
2/s Current Disk Writes Completed
Top Ten Processes By CPU Consumption:
[["/usr/lib64/erlang/erts-5.8.5/bin/beam.smp", "5.2"], ["ruby", "4.1"], ["ps", "2.0"], ["abrt-dump-oops", "0.8"], ["aoe_ktio", "0.7"], ["aoe_tx", "0.4"], ["ata_sff", "0.2"], ["auditd", "0.1"], ["awk", "0.1"], ["-bash", "0.1"]]
Top Ten Processes By Memory Consumption:
[["unicorn", "4.8"], ["unicorn", "4.7"], ["unicorn", "4.6"], ["unicorn", "4.6"], ["unicorn", "4.5"], ["unicorn", "4.5"], ["unicorn", "4.3"], ["unicorn", "4.3"], ["unicorn", "4.2"], ["/usr/lib64/erlang/erts-5.8.5/bin/beam.smp", "4.0"]]
```

```bash
Run:

mac_example.rb

Example Output:

Mac version is under development
92.8 Gigabytes Used
24.96 Percentage of Gigabytes Used
71.47% Active Memory Used
7.69% CPU Used
1.19 Average System Load Of The Past Minute
Top Ten Processes By CPU Consumption: [["PluginProcess", "9.0"], ["WindowServer", "2.7"], ["iPhoto", "1.2"], ["Terminal", "1.0"], ["rubymine", "0.5"], ["SystemUIServer", "0.1"], ["(scanunit)", "0.0"], ["(scanunit)", "0.0"], ["(scanunit)", "0.0"], ["(scanunit)", "0.0"]]
Top Ten Processes By Memory Consumption: [["WebProcess", "8.3"], ["rubymine", "6.4"], ["Safari", "2.0"], ["iPhoto", "1.8"], ["Mail", "1.7"], ["mds", "1.6"], ["ruby", "1.5"], ["WindowServer", "1.3"], ["PluginProcess", "1.2"], ["GitHub", "1.1"]]
```

## Methods available

##### Linux
    uw_diskused
    uw_diskused_on(location)
    uw_diskused_perc
    uw_diskavailable
    uw_diskavailable_on(location)
    uw_cpuused
    uw_tcpused
    uw_udpused
    uw_memused
    uw_load
    uw_bandrx
    uw_bandtx
    uw_diskioreads
    uw_diskiowrites
    uw_cputop
    uw_memtop
    uw_httpconns

##### Mac
    uw_diskused
    uw_diskused_on(location)
    uw_diskused_perc
    uw_diskavailable
    uw_diskavailable_on(location)
    uw_cputop
    uw_memtop
    uw_load
    uw_cpuused
    uw_memused
    uw_httpconns
    uw_bandrx
    uw_bandtx


## Notes

* Disk Used is a sum of all partitions calculated in Gigabytes

* Disk Used Percentage is a total percentage of all disk partitions used

* Disk Used On is disk space used on the location passed calculated in Gigabytes, returns "location invalid" if invalid location passed

* Disk Available is a sum of all partitions calculated in Gigabytes

* Disk Available On is disk space available on the location passed calculated in Gigabytes, returns "location invalid" if invalid location passed

* CPU Used is a percentage of current CPU being used

* TCP/UDP Connections Used is a total count of each respectively

* Active Memory Used is a percentage of active system memory being used

* Load is the average load of the past minute

* Bandwidth is current received and transmitted in Megabits

* Disk IO is current disk reads and writes completed per second

* Top Ten Processes By CPU Consumption are based on percent CPU used

* Top Ten Processes By Memory Consumption are base on percent Memory used

* HTTP Conns is the number of connections on 80 port

## TODO
- Open Source our internal Rails based Dashboard to monitor a server
- More Realtime data updates
- API to send data to Sensu/Graphite directly

## Tested Using

**RUBY VERSIONS:**
- ruby 1.9.3p429 (2013-05-15) [x86_64-linux]
- ruby 2.0
- ruby 2.1.5

**TESTED OS VERSIONS:**
- Ubuntu 14.04
- Mac OS 10.x

## Credits
Thanks to Ruben Espinosa, Phil Chen for the wonderful [Usagewatch](https://github.com/nethacker/usagewatch) gem.
