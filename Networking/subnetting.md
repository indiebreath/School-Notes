| Bits Borrowed | Last Byte | No of Subnets | Total Addresses | No of Hosts | Mask | CIDR |
| ------------- | --------- | ------------- | --------------- | ----------- | ---- | ---- |
| 0             | 0000 0000 | 1             | 256             | 254         | .0   | /24  |
| 1             | 1000 0000 | 2             | 128             | 126         | .128 | /25  |
| 2             | 1100 0000 | 4             | 64              | 62          | .192 | /26  |
| 3             | 1110 0000 | 8             | 32              | 30          | .224 | /27  |
| 4             | 1111 0000 | 16            | 16              | 14          | .240 | /28  |
| 5             | 1111 1000 | 32            | 8               | 6           | .248 | /29  |
| 6             | 1111 1100 | 64            | 4               | 2           | .252 | /30  |

Formula for **n**th subnet:
**n**th subnet = ( n - 1 ) * increment
