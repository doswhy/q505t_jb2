.class public Lcom/caf/fmradio/PresetStation;
.super Ljava/lang/Object;
.source "PresetStation.java"


# instance fields
.field private mFrequency:I

.field private mName:Ljava/lang/String;

.field private mPI:I

.field private mPIStr:Ljava/lang/String;

.field private mPty:I

.field private mPtyStr:Ljava/lang/String;

.field private mRDSSupported:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "frequency"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/caf/fmradio/PresetStation;->mName:Ljava/lang/String;

    .line 39
    const v0, 0x18ed4

    iput v0, p0, Lcom/caf/fmradio/PresetStation;->mFrequency:I

    .line 40
    iput v1, p0, Lcom/caf/fmradio/PresetStation;->mPty:I

    .line 41
    iput v1, p0, Lcom/caf/fmradio/PresetStation;->mPI:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/caf/fmradio/PresetStation;->mPtyStr:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/caf/fmradio/PresetStation;->mPIStr:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/caf/fmradio/PresetStation;->mRDSSupported:Z

    .line 47
    iput-object p1, p0, Lcom/caf/fmradio/PresetStation;->mName:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p2}, Lcom/caf/fmradio/PresetStation;->setFrequency(I)V

    .line 53
    return-void
.end method

.method private static get3LetterCallSign(I)Ljava/lang/String;
    .locals 1
    .parameter "piCode"

    .prologue
    .line 246
    const-string v0, ""

    .line 247
    .local v0, callSign:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 610
    :goto_0
    :pswitch_0
    return-object v0

    .line 251
    :pswitch_1
    const-string v0, "KBW"

    .line 252
    goto :goto_0

    .line 256
    :pswitch_2
    const-string v0, "KOY"

    .line 257
    goto :goto_0

    .line 261
    :pswitch_3
    const-string v0, "WHO"

    .line 262
    goto :goto_0

    .line 266
    :pswitch_4
    const-string v0, "KCY"

    .line 267
    goto :goto_0

    .line 271
    :pswitch_5
    const-string v0, "KPQ"

    .line 272
    goto :goto_0

    .line 276
    :pswitch_6
    const-string v0, "WHP"

    .line 277
    goto :goto_0

    .line 281
    :pswitch_7
    const-string v0, "KDB"

    .line 282
    goto :goto_0

    .line 286
    :pswitch_8
    const-string v0, "KQV"

    .line 287
    goto :goto_0

    .line 291
    :pswitch_9
    const-string v0, "WIL"

    .line 292
    goto :goto_0

    .line 296
    :pswitch_a
    const-string v0, "KDF"

    .line 297
    goto :goto_0

    .line 301
    :pswitch_b
    const-string v0, "KSD"

    .line 302
    goto :goto_0

    .line 306
    :pswitch_c
    const-string v0, "WIP"

    .line 307
    goto :goto_0

    .line 311
    :pswitch_d
    const-string v0, "KEX"

    .line 312
    goto :goto_0

    .line 316
    :pswitch_e
    const-string v0, "KSL"

    .line 317
    goto :goto_0

    .line 321
    :pswitch_f
    const-string v0, "WIS"

    .line 322
    goto :goto_0

    .line 326
    :pswitch_10
    const-string v0, "KFH"

    .line 327
    goto :goto_0

    .line 331
    :pswitch_11
    const-string v0, "KUJ"

    .line 332
    goto :goto_0

    .line 336
    :pswitch_12
    const-string v0, "WJR"

    .line 337
    goto :goto_0

    .line 341
    :pswitch_13
    const-string v0, "KFI"

    .line 342
    goto :goto_0

    .line 346
    :pswitch_14
    const-string v0, "KUT"

    .line 347
    goto :goto_0

    .line 351
    :pswitch_15
    const-string v0, "WJW"

    .line 352
    goto :goto_0

    .line 356
    :pswitch_16
    const-string v0, "KGA"

    .line 357
    goto :goto_0

    .line 361
    :pswitch_17
    const-string v0, "KVI"

    .line 362
    goto :goto_0

    .line 366
    :pswitch_18
    const-string v0, "WJZ"

    .line 367
    goto :goto_0

    .line 371
    :pswitch_19
    const-string v0, "KGB"

    .line 372
    goto :goto_0

    .line 376
    :pswitch_1a
    const-string v0, "KWG"

    .line 377
    goto :goto_0

    .line 381
    :pswitch_1b
    const-string v0, "WKY"

    .line 382
    goto :goto_0

    .line 386
    :pswitch_1c
    const-string v0, "KGO"

    .line 387
    goto :goto_0

    .line 391
    :pswitch_1d
    const-string v0, "KXL"

    .line 392
    goto :goto_0

    .line 396
    :pswitch_1e
    const-string v0, "WLS"

    .line 397
    goto :goto_0

    .line 401
    :pswitch_1f
    const-string v0, "KGU"

    .line 402
    goto :goto_0

    .line 406
    :pswitch_20
    const-string v0, "KXO"

    .line 407
    goto :goto_0

    .line 411
    :pswitch_21
    const-string v0, "WLW"

    .line 412
    goto :goto_0

    .line 416
    :pswitch_22
    const-string v0, "KGW"

    .line 417
    goto :goto_0

    .line 421
    :pswitch_23
    const-string v0, "KYW"

    .line 422
    goto :goto_0

    .line 426
    :pswitch_24
    const-string v0, "WMC"

    .line 427
    goto :goto_0

    .line 431
    :pswitch_25
    const-string v0, "KGY"

    .line 432
    goto :goto_0

    .line 436
    :pswitch_26
    const-string v0, "WBT"

    .line 437
    goto :goto_0

    .line 441
    :pswitch_27
    const-string v0, "WMT"

    .line 442
    goto :goto_0

    .line 446
    :pswitch_28
    const-string v0, "KHQ"

    .line 447
    goto :goto_0

    .line 451
    :pswitch_29
    const-string v0, "WBZ"

    .line 452
    goto :goto_0

    .line 456
    :pswitch_2a
    const-string v0, "WOC"

    .line 457
    goto :goto_0

    .line 461
    :pswitch_2b
    const-string v0, "KID"

    .line 462
    goto/16 :goto_0

    .line 466
    :pswitch_2c
    const-string v0, "WDZ"

    .line 467
    goto/16 :goto_0

    .line 471
    :pswitch_2d
    const-string v0, "WOI"

    .line 472
    goto/16 :goto_0

    .line 476
    :pswitch_2e
    const-string v0, "KIT"

    .line 477
    goto/16 :goto_0

    .line 481
    :pswitch_2f
    const-string v0, "WEW"

    .line 482
    goto/16 :goto_0

    .line 486
    :pswitch_30
    const-string v0, "WOL"

    .line 487
    goto/16 :goto_0

    .line 491
    :pswitch_31
    const-string v0, "KJR"

    .line 492
    goto/16 :goto_0

    .line 496
    :pswitch_32
    const-string v0, "WGH"

    .line 497
    goto/16 :goto_0

    .line 501
    :pswitch_33
    const-string v0, "WOR"

    .line 502
    goto/16 :goto_0

    .line 506
    :pswitch_34
    const-string v0, "KLO"

    .line 507
    goto/16 :goto_0

    .line 511
    :pswitch_35
    const-string v0, "WGL"

    .line 512
    goto/16 :goto_0

    .line 516
    :pswitch_36
    const-string v0, "WOW"

    .line 517
    goto/16 :goto_0

    .line 521
    :pswitch_37
    const-string v0, "KLZ"

    .line 522
    goto/16 :goto_0

    .line 526
    :pswitch_38
    const-string v0, "WGN"

    .line 527
    goto/16 :goto_0

    .line 531
    :pswitch_39
    const-string v0, "WRC"

    .line 532
    goto/16 :goto_0

    .line 536
    :pswitch_3a
    const-string v0, "KMA"

    .line 537
    goto/16 :goto_0

    .line 541
    :pswitch_3b
    const-string v0, "WGR"

    .line 542
    goto/16 :goto_0

    .line 546
    :pswitch_3c
    const-string v0, "WRR"

    .line 547
    goto/16 :goto_0

    .line 551
    :pswitch_3d
    const-string v0, "KMJ"

    .line 552
    goto/16 :goto_0

    .line 556
    :pswitch_3e
    const-string v0, "WGY"

    .line 557
    goto/16 :goto_0

    .line 561
    :pswitch_3f
    const-string v0, "WSB"

    .line 562
    goto/16 :goto_0

    .line 566
    :pswitch_40
    const-string v0, "KNX"

    .line 567
    goto/16 :goto_0

    .line 571
    :pswitch_41
    const-string v0, "WHA"

    .line 572
    goto/16 :goto_0

    .line 576
    :pswitch_42
    const-string v0, "WSM"

    .line 577
    goto/16 :goto_0

    .line 581
    :pswitch_43
    const-string v0, "KOA"

    .line 582
    goto/16 :goto_0

    .line 586
    :pswitch_44
    const-string v0, "WHB"

    .line 587
    goto/16 :goto_0

    .line 591
    :pswitch_45
    const-string v0, "WWJ"

    .line 592
    goto/16 :goto_0

    .line 596
    :pswitch_46
    const-string v0, "KOB"

    .line 597
    goto/16 :goto_0

    .line 601
    :pswitch_47
    const-string v0, "WHK"

    .line 602
    goto/16 :goto_0

    .line 606
    :pswitch_48
    const-string v0, "WWL"

    goto/16 :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x9950
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_e
        :pswitch_11
        :pswitch_17
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_0
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_0
        :pswitch_35
        :pswitch_38
        :pswitch_3b
        :pswitch_0
        :pswitch_41
        :pswitch_44
        :pswitch_47
        :pswitch_3
        :pswitch_0
        :pswitch_c
        :pswitch_12
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_2a
        :pswitch_0
        :pswitch_30
        :pswitch_33
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_45
        :pswitch_48
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_19
        :pswitch_2
        :pswitch_5
        :pswitch_b
        :pswitch_14
        :pswitch_1d
        :pswitch_20
        :pswitch_0
        :pswitch_26
        :pswitch_32
        :pswitch_3e
        :pswitch_6
        :pswitch_9
        :pswitch_24
        :pswitch_27
        :pswitch_2d
        :pswitch_36
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_1
        :pswitch_4
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_46
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_15
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_39
    .end packed-switch
.end method

.method public static getFrequencyString(I)Ljava/lang/String;
    .locals 7
    .parameter "frequency"

    .prologue
    .line 146
    int-to-double v3, p0

    const-wide v5, 0x408f400000000000L

    div-double v0, v3, v5

    .line 147
    .local v0, frequencyDbl:D
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, frequencyString:Ljava/lang/String;
    return-object v2
.end method

.method private static getOtherCallSign(I)Ljava/lang/String;
    .locals 2
    .parameter "piCode"

    .prologue
    .line 230
    const-string v0, ""

    .line 231
    .local v0, callSign:Ljava/lang/String;
    const v1, 0xb001

    if-lt p0, v1, :cond_1

    const v1, 0xbf01

    if-gt p0, v1, :cond_1

    .line 233
    const-string v0, "NPR"

    .line 241
    :cond_0
    :goto_0
    return-object v0

    .line 234
    :cond_1
    const v1, 0xb002

    if-lt p0, v1, :cond_2

    const v1, 0xbf02

    if-gt p0, v1, :cond_2

    .line 236
    const-string v0, "CBC English"

    goto :goto_0

    .line 237
    :cond_2
    const v1, 0xb003

    if-lt p0, v1, :cond_0

    const v1, 0xbf03

    if-gt p0, v1, :cond_0

    .line 239
    const-string v0, "CBC French"

    goto :goto_0
.end method

.method public static getRBDSPtyString(I)Ljava/lang/String;
    .locals 1
    .parameter "pty"

    .prologue
    .line 636
    const-string v0, ""

    .line 637
    .local v0, ptyStr:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 771
    :pswitch_0
    const-string v0, ""

    .line 776
    :goto_0
    return-object v0

    .line 641
    :pswitch_1
    const-string v0, "News"

    .line 642
    goto :goto_0

    .line 646
    :pswitch_2
    const-string v0, "Information"

    .line 647
    goto :goto_0

    .line 651
    :pswitch_3
    const-string v0, "Sports"

    .line 652
    goto :goto_0

    .line 656
    :pswitch_4
    const-string v0, "Talk"

    .line 657
    goto :goto_0

    .line 661
    :pswitch_5
    const-string v0, "Rock"

    .line 662
    goto :goto_0

    .line 666
    :pswitch_6
    const-string v0, "Classic Rock"

    .line 667
    goto :goto_0

    .line 671
    :pswitch_7
    const-string v0, "Adult Hits"

    .line 672
    goto :goto_0

    .line 676
    :pswitch_8
    const-string v0, "Soft Rock"

    .line 677
    goto :goto_0

    .line 681
    :pswitch_9
    const-string v0, "Top 40"

    .line 682
    goto :goto_0

    .line 686
    :pswitch_a
    const-string v0, "Country"

    .line 687
    goto :goto_0

    .line 691
    :pswitch_b
    const-string v0, "Oldies"

    .line 692
    goto :goto_0

    .line 696
    :pswitch_c
    const-string v0, "Soft"

    .line 697
    goto :goto_0

    .line 701
    :pswitch_d
    const-string v0, "Nostalgia"

    .line 702
    goto :goto_0

    .line 706
    :pswitch_e
    const-string v0, "Jazz"

    .line 707
    goto :goto_0

    .line 711
    :pswitch_f
    const-string v0, "Classical"

    .line 712
    goto :goto_0

    .line 716
    :pswitch_10
    const-string v0, "Rhythm and Blues"

    .line 717
    goto :goto_0

    .line 721
    :pswitch_11
    const-string v0, "Soft Rhythm and Blues"

    .line 722
    goto :goto_0

    .line 726
    :pswitch_12
    const-string v0, "Foreign Language"

    .line 727
    goto :goto_0

    .line 731
    :pswitch_13
    const-string v0, "Religious Music"

    .line 732
    goto :goto_0

    .line 736
    :pswitch_14
    const-string v0, "Religious Talk"

    .line 737
    goto :goto_0

    .line 741
    :pswitch_15
    const-string v0, "Personality"

    .line 742
    goto :goto_0

    .line 746
    :pswitch_16
    const-string v0, "Public"

    .line 747
    goto :goto_0

    .line 751
    :pswitch_17
    const-string v0, "College"

    .line 752
    goto :goto_0

    .line 756
    :pswitch_18
    const-string v0, "Weather"

    .line 757
    goto :goto_0

    .line 761
    :pswitch_19
    const-string v0, "Emergency Test"

    .line 762
    goto :goto_0

    .line 766
    :pswitch_1a
    const-string v0, "Emergency"

    .line 767
    goto :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method public static getRDSPtyString(I)Ljava/lang/String;
    .locals 1
    .parameter "pty"

    .prologue
    .line 782
    const-string v0, ""

    .line 783
    .local v0, ptyStr:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 942
    const-string v0, ""

    .line 947
    :goto_0
    return-object v0

    .line 787
    :pswitch_0
    const-string v0, "News"

    .line 788
    goto :goto_0

    .line 792
    :pswitch_1
    const-string v0, "Current Affairs"

    .line 793
    goto :goto_0

    .line 797
    :pswitch_2
    const-string v0, "Information"

    .line 798
    goto :goto_0

    .line 802
    :pswitch_3
    const-string v0, "Sport"

    .line 803
    goto :goto_0

    .line 807
    :pswitch_4
    const-string v0, "Education"

    .line 808
    goto :goto_0

    .line 812
    :pswitch_5
    const-string v0, "Drama"

    .line 813
    goto :goto_0

    .line 817
    :pswitch_6
    const-string v0, "Culture"

    .line 818
    goto :goto_0

    .line 822
    :pswitch_7
    const-string v0, "Science"

    .line 823
    goto :goto_0

    .line 827
    :pswitch_8
    const-string v0, "Varied"

    .line 828
    goto :goto_0

    .line 832
    :pswitch_9
    const-string v0, "Pop Music"

    .line 833
    goto :goto_0

    .line 837
    :pswitch_a
    const-string v0, "Rock Music"

    .line 838
    goto :goto_0

    .line 842
    :pswitch_b
    const-string v0, "Easy Listening Music"

    .line 843
    goto :goto_0

    .line 847
    :pswitch_c
    const-string v0, "Light classical"

    .line 848
    goto :goto_0

    .line 852
    :pswitch_d
    const-string v0, "Serious classical"

    .line 853
    goto :goto_0

    .line 857
    :pswitch_e
    const-string v0, "Other Music"

    .line 858
    goto :goto_0

    .line 862
    :pswitch_f
    const-string v0, "Weather"

    .line 863
    goto :goto_0

    .line 867
    :pswitch_10
    const-string v0, "Finance"

    .line 868
    goto :goto_0

    .line 872
    :pswitch_11
    const-string v0, "Children programs"

    .line 873
    goto :goto_0

    .line 877
    :pswitch_12
    const-string v0, "Social Affairs"

    .line 878
    goto :goto_0

    .line 882
    :pswitch_13
    const-string v0, "Religion"

    .line 883
    goto :goto_0

    .line 887
    :pswitch_14
    const-string v0, "Phone In"

    .line 888
    goto :goto_0

    .line 892
    :pswitch_15
    const-string v0, "Travel"

    .line 893
    goto :goto_0

    .line 897
    :pswitch_16
    const-string v0, "Leisure"

    .line 898
    goto :goto_0

    .line 902
    :pswitch_17
    const-string v0, "Jazz Music"

    .line 903
    goto :goto_0

    .line 907
    :pswitch_18
    const-string v0, "Country Music"

    .line 908
    goto :goto_0

    .line 912
    :pswitch_19
    const-string v0, "National Music"

    .line 913
    goto :goto_0

    .line 917
    :pswitch_1a
    const-string v0, "Oldies Music"

    .line 918
    goto :goto_0

    .line 922
    :pswitch_1b
    const-string v0, "Folk Music"

    .line 923
    goto :goto_0

    .line 927
    :pswitch_1c
    const-string v0, "Documentary"

    .line 928
    goto :goto_0

    .line 932
    :pswitch_1d
    const-string v0, "Emergency Test"

    .line 933
    goto :goto_0

    .line 937
    :pswitch_1e
    const-string v0, "Emergency"

    .line 938
    goto :goto_0

    .line 783
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method public static parsePI(I)Ljava/lang/String;
    .locals 10
    .parameter "piCode"

    .prologue
    const/16 v9, 0x1000

    .line 176
    const-string v6, ""

    .line 177
    .local v6, callSign:Ljava/lang/String;
    shr-int/lit8 v7, p0, 0x8

    const/16 v8, 0xaf

    if-ne v7, v8, :cond_0

    .line 179
    and-int/lit16 v7, p0, 0xff

    shl-int/lit8 p0, v7, 0x8

    .line 187
    :cond_0
    shr-int/lit8 v7, p0, 0xc

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1

    .line 189
    and-int/lit16 v7, p0, 0xf00

    shl-int/lit8 v7, v7, 0x4

    and-int/lit16 v8, p0, 0xff

    add-int p0, v7, v8

    .line 191
    :cond_1
    if-lt p0, v9, :cond_3

    const v7, 0x994e

    if-gt p0, v7, :cond_3

    .line 195
    if-lt p0, v9, :cond_2

    const/16 v7, 0x54a7

    if-gt p0, v7, :cond_2

    .line 197
    add-int/lit16 p0, p0, -0x1000

    .line 198
    const-string v2, "K"

    .line 204
    .local v2, ShartChar:Ljava/lang/String;
    :goto_0
    div-int/lit8 v0, p0, 0x1a

    .line 205
    .local v0, CharDiv:I
    mul-int/lit8 v7, v0, 0x1a

    sub-int v1, p0, v7

    .line 206
    .local v1, CharPos:I
    add-int/lit8 v7, v1, 0x41

    int-to-char v5, v7

    .line 208
    .local v5, c3:C
    move p0, v0

    .line 209
    div-int/lit8 v0, p0, 0x1a

    .line 210
    mul-int/lit8 v7, v0, 0x1a

    sub-int v1, p0, v7

    .line 211
    add-int/lit8 v7, v1, 0x41

    int-to-char v4, v7

    .line 213
    .local v4, c2:C
    move p0, v0

    .line 214
    div-int/lit8 v0, p0, 0x1a

    .line 215
    mul-int/lit8 v7, v0, 0x1a

    sub-int v1, p0, v7

    .line 216
    add-int/lit8 v7, v1, 0x41

    int-to-char v3, v7

    .line 217
    .local v3, c1:C
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 225
    .end local v0           #CharDiv:I
    .end local v1           #CharPos:I
    .end local v2           #ShartChar:Ljava/lang/String;
    .end local v3           #c1:C
    .end local v4           #c2:C
    .end local v5           #c3:C
    :goto_1
    return-object v6

    .line 201
    :cond_2
    add-int/lit16 p0, p0, -0x54a8

    .line 202
    const-string v2, "W"

    .restart local v2       #ShartChar:Ljava/lang/String;
    goto :goto_0

    .line 218
    .end local v2           #ShartChar:Ljava/lang/String;
    :cond_3
    const v7, 0x9950

    if-lt p0, v7, :cond_4

    const v7, 0x9eff

    if-gt p0, v7, :cond_4

    .line 220
    invoke-static {p0}, Lcom/caf/fmradio/PresetStation;->get3LetterCallSign(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 223
    :cond_4
    invoke-static {p0}, Lcom/caf/fmradio/PresetStation;->getOtherCallSign(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public static parsePTY(I)Ljava/lang/String;
    .locals 3
    .parameter "pty"

    .prologue
    .line 618
    const-string v0, ""

    .line 619
    .local v0, ptyStr:Ljava/lang/String;
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getFMConfiguration()Lqcom/fmradio/FmConfig;

    move-result-object v2

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getRdsStd()I

    move-result v1

    .line 620
    .local v1, rdsStd:I
    if-nez v1, :cond_1

    .line 622
    invoke-static {p0}, Lcom/caf/fmradio/PresetStation;->getRBDSPtyString(I)Ljava/lang/String;

    move-result-object v0

    .line 628
    :cond_0
    :goto_0
    return-object v0

    .line 624
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 626
    invoke-static {p0}, Lcom/caf/fmradio/PresetStation;->getRDSPtyString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public Copy(Lcom/caf/fmradio/PresetStation;)V
    .locals 1
    .parameter "station"

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/caf/fmradio/PresetStation;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caf/fmradio/PresetStation;->mName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/caf/fmradio/PresetStation;->getFrequency()I

    move-result v0

    iput v0, p0, Lcom/caf/fmradio/PresetStation;->mFrequency:I

    .line 70
    invoke-virtual {p1}, Lcom/caf/fmradio/PresetStation;->getPI()I

    move-result v0

    iput v0, p0, Lcom/caf/fmradio/PresetStation;->mPI:I

    .line 71
    invoke-virtual {p1}, Lcom/caf/fmradio/PresetStation;->getPty()I

    move-result v0

    iput v0, p0, Lcom/caf/fmradio/PresetStation;->mPty:I

    .line 72
    invoke-virtual {p1}, Lcom/caf/fmradio/PresetStation;->getRDSSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/caf/fmradio/PresetStation;->mRDSSupported:Z

    .line 74
    invoke-virtual {p1}, Lcom/caf/fmradio/PresetStation;->getPtyString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caf/fmradio/PresetStation;->mPtyStr:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcom/caf/fmradio/PresetStation;->getPIString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caf/fmradio/PresetStation;->mPIStr:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/caf/fmradio/PresetStation;->mFrequency:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/caf/fmradio/PresetStation;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPI()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/caf/fmradio/PresetStation;->mPI:I

    return v0
.end method

.method public getPIString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/caf/fmradio/PresetStation;->mPIStr:Ljava/lang/String;

    return-object v0
.end method

.method public getPty()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/caf/fmradio/PresetStation;->mPty:I

    return v0
.end method

.method public getPtyString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/caf/fmradio/PresetStation;->mPtyStr:Ljava/lang/String;

    return-object v0
.end method

.method public getRDSSupported()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/caf/fmradio/PresetStation;->mRDSSupported:Z

    return v0
.end method

.method public setFrequency(I)V
    .locals 5
    .parameter "freq"

    .prologue
    .line 107
    iput p1, p0, Lcom/caf/fmradio/PresetStation;->mFrequency:I

    .line 109
    iget-object v0, p0, Lcom/caf/fmradio/PresetStation;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/caf/fmradio/PresetStation;->mFrequency:I

    int-to-double v1, v1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caf/fmradio/PresetStation;->mName:Ljava/lang/String;

    .line 113
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iput-object p1, p0, Lcom/caf/fmradio/PresetStation;->mName:Ljava/lang/String;

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/caf/fmradio/PresetStation;->mFrequency:I

    int-to-double v1, v1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caf/fmradio/PresetStation;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPI(I)V
    .locals 1
    .parameter "pi"

    .prologue
    .line 122
    iput p1, p0, Lcom/caf/fmradio/PresetStation;->mPI:I

    .line 123
    iget v0, p0, Lcom/caf/fmradio/PresetStation;->mPI:I

    invoke-static {v0}, Lcom/caf/fmradio/PresetStation;->parsePI(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caf/fmradio/PresetStation;->mPIStr:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setPty(I)V
    .locals 1
    .parameter "pty"

    .prologue
    .line 117
    iput p1, p0, Lcom/caf/fmradio/PresetStation;->mPty:I

    .line 118
    iget v0, p0, Lcom/caf/fmradio/PresetStation;->mPty:I

    invoke-static {v0}, Lcom/caf/fmradio/PresetStation;->parsePTY(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caf/fmradio/PresetStation;->mPtyStr:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setRDSSupported(Z)V
    .locals 0
    .parameter "rds"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/caf/fmradio/PresetStation;->mRDSSupported:Z

    .line 128
    return-void
.end method
