# Advantages and disadvantages of various RAID levels

## RAID 0
Minimum number of disks: 2
Pros: Increased performance (Write and read speeds).
Cons: No redundancy.
Business use: Live streaming, IPTV, VOD Edge Server

## RAID 1
Minimum number of disks: 2
Pros: Fault tolerance and easy data recovery. Increased read performance.
Cons: Lower usable capacity. Higher cost per megabyte (double the amounts of drives is required to achieve desired capacity).
Business use: Standard application servers where data redundancy and availability is important.

## RAID 5
Minimum number of disks: 3
Pros: Fault tolerance and increased performance (lower than RAID 0)
Cons: Lower performance with servers performing large amounts of write operations because of parity overhead.
Ideal use: File storage servers and application servers.

## RAID 6
Minimum number of disks: 4
Pros: Even higher redundancy than RAID 5. Increased read performance.
Cons: Lower performance with servers performing large amounts of write operations because of parity overhead.
Ideal use: Large file storage servers and application servers.

## RAID 10
Minimum number of disks: 4
Pros: Very high performance. Fault tolerance.
Cons: Lower usable capacity/High cost. Limited scalability
Ideal use: Highly utilized database servers/ servers performing a lot of write operations.




Resources:
[Advantages and disadvantages of various RAID levels](https://datapacket.com/blog/advantages-disadvantages-various-raid-levels/)
