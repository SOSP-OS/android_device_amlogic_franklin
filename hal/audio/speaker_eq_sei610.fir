# FIR speaker EQ file for SEI-610
# This filter attenuates 200-400Hz by 18dB,
# and some 6dB notch attenuation at 2.25kHz, 3.8kHz, 6.6kHz.
# Script to generate this file: https://drive.google.com/file/d/1_qvkZ8nU-c6tD6XrH80et2P12paardAz/view?usp=sharing

# Full frequency response here: https://b.corp.google.com/issues/159714063#comment3

# Each FIR coefficient is specified on one line (no leading spaces).
# First line is 0th coefficient.
# Values must be 16-bit integers. Currently, a max of 512 taps is supported.

18976
9870
-12520
2452
-766
-1023
1122
-2509
316
-1464
95
-817
-1191
-1882
-2299
-1806
-1180
-310
-68
-303
-957
-1544
-1738
-1490
-973
-517
-285
-261
-247
-68
305
729
983
931
612
210
-63
-100
48
234
313
244
99
3
36
183
350
435
398
286
191
188
282
409
483
454
336
192
92
63
83
100
73
2
-75
-114
-93
-27
41
73
55
9
-30
-38
-14
18
30
9
-34
-78
-100
-94
-75
-62
-68
-91
-116
-124
-109
-79
-50
-35
-37
-47
-53
-48
-33
-19
-14
-22
-38
-51
-55
-49
-38
-31
-32
-38
-45
-45
-38
-26
-17
-14
-16
-21
-23
-21
-16
-12
-13
-17
-25
-30
-32
-31
-29
-28
-30
-33
-36
-37
-35
-32
-30
-31
-33
-36
-38
-38
-37
-37
-38
-40
-43
-46
-47
-47
-46
-46
-47
-49
-50
-50
-50
-49
-48
-49
-50
-51
-51
-51
-51
-51
-51
-52
-53
-54
-54
-54
-54
-54
-54
-55
-55
-55
-54
-54
-54
-54
-54
-55
-55
-55
-55
-55
-55
-55
-56
-56
-56
-56
-56
-56
-56
-56
-56
-56
-56
-55
-55
-55
-56
-56
-56
-56
-55
-55
-55
-56
-56
-56
-55
-55
-55
-55
-55
-55
-55
-55
-55
-54
-54
-54
-54
-54
-54
-54
-53
-53
-53
-53
-53
-53
-52
-52
-52
-52
-51
-51
-51
-51
-50
-50
-50
-50
-49
-49
-49
-48
-48
-48
-48
-47
-47
-47
-46
-46
-46
-45
-45
-45
-44
-44
-44
-43
-43
-43
-42
-42
-41
-41
-41
-40
-40
-40
-39
-39
-38
-38
-38
-37
-37
-36
-36
-36
-35
-35
-34
-34
-33
-33
-33
-32
-32
-31
-31
-31
-30
-30
-29
-29
-28
-28
-27
-27
-27
-26
-26
-25
-25
-24
-24
-24
-23
-23
-22
-22
-21
-21
-20
-20
-20
-19
-19
-18
-18
-17
-17
-17
-16
-16
-15
-15
-14
-14
-14
-13
-13
-12
-12
-11
-11
-11
-10
-10
-9
-9
-9
-8
-8
-7
-7
-7
-6
-6
-5
-5
-5
-4
-4
-3
-3
-3
-2
-2
-1
-1
-1
0
0
0
0
0
0
1
1
1
2
2
2
3
3
3
4
4
4
5
5
5
6
6
6
7
7
7
7
8
8
8
9
9
9
9
10
10
10
10
11
11
11
11
12
12
12
12
13
13
13
13
13
14
14
14
14
14
15
15
15
15
15
16
16
16
16
16
16
17
17
17
17
17
17
17
18
18
18
18
18
18
18
18
19
19
19
19
19
19
19
19
19
19
19
20
20
20
20
20
20
20
20
20
20
20
20
20
20
20
20
20
20
21
21
21
21
21
21
21
21
21
21
21
21
21
21
21
21
21
21
21
21
21
21
21
21
21
20
20
20
20
20
20
