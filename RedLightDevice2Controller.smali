.class public Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;
.super Lcom/mediatek/camera/common/mode/photo/device/PhotoDevice2Controller;
.source "RedLightDevice2Controller.java"


# static fields
.field private static final NIGHT_ISO_VALUE:I

.field private static final TAG:Lcom/mediatek/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mIsAutoRedlight:Z

.field private mIsoValue:I

.field private mResumed:Z

.field private mSwitchTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mediatek/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->TAG:Lcom/mediatek/camera/common/debug/LogUtil$Tag;

    invoke-static {}, Lcom/mediatek/camera/prize/FeatureSwitcher;->getRedlightIsoValue()I

    move-result v0

    sput v0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->NIGHT_ISO_VALUE:I

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/camera/common/app/IApp;Lcom/mediatek/camera/common/ICameraContext;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/camera/common/mode/photo/device/PhotoDevice2Controller;-><init>(Lcom/mediatek/camera/common/app/IApp;Lcom/mediatek/camera/common/ICameraContext;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mSwitchTime:J

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/mediatek/camera/prize/FeatureSwitcher;->isSupportAutoRedlight()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mIsAutoRedlight:Z

    return-void
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized setRedLightValue(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mIsAutoRedlight:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mSwitchTime:J

    sget-object v0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->TAG:Lcom/mediatek/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRedLightValue value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/camera/common/debug/LogHelper;->d(Lcom/mediatek/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "/sys/class/flash_irtouch/flash_irtouch_data/irtouch_value"

    invoke-static {v2}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/class/flash_irtouch/flash_irtouch_data/irtouch_value"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/class/flashlight_core/flashlight/flashlight_irtorch"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    if-eqz p1, :cond_2

    const/16 p1, 0x31

    :try_start_3
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_1

    :cond_2
    const/16 p1, 0x30

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write(I)V

    :goto_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "setRedLightValue success"

    invoke-static {v0, p1}, Lcom/mediatek/camera/common/debug/LogHelper;->d(Lcom/mediatek/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catch_2
    move-exception p1

    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5

    :catch_3
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_5
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected onDeviceCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/camera/common/mode/photo/device/PhotoDevice2Controller;->onDeviceCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-boolean p1, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mIsAutoRedlight:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mResumed:Z

    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    invoke-static {p3}, Lcom/mediatek/camera/common/utils/CameraUtil;->isStillCaptureTemplate(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget p2, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->NIGHT_ISO_VALUE:I

    const-wide/16 v0, 0xbb8

    const/4 p3, 0x0

    const/16 v2, 0x32

    const/4 v3, 0x1

    if-le p1, p2, :cond_2

    iget p2, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mIsoValue:I

    if-lez p2, :cond_0

    iput p3, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mIsoValue:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mSwitchTime:J

    :cond_0
    iget p2, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mIsoValue:I

    sub-int/2addr p2, v3

    if-ne p2, v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mSwitchTime:J

    sub-long/2addr v4, v6

    cmp-long p2, v4, v0

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mIsoValue:I

    sub-int/2addr p2, v3

    iput p2, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mIsoValue:I

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mIsoValue:I

    if-gez p2, :cond_3

    iput p3, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mIsoValue:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mSwitchTime:J

    :cond_3
    iget p2, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mIsoValue:I

    add-int/2addr p2, v3

    if-ne p2, v2, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mSwitchTime:J

    sub-long/2addr v4, v6

    cmp-long p2, v4, v0

    if-gez p2, :cond_4

    goto :goto_0

    :cond_4
    iget p2, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mIsoValue:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mIsoValue:I

    :goto_0
    sget-object p2, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->TAG:Lcom/mediatek/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "redlight iso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mIsoValue="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mIsoValue:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mediatek/camera/common/debug/LogHelper;->d(Lcom/mediatek/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string p1, "ro.odm.cust"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pcba-sea"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget p1, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mIsoValue:I

    const/16 p2, -0x32

    if-ne p1, p2, :cond_5

    invoke-direct {p0, v3}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->setRedLightValue(Z)V

    goto :goto_1

    :cond_5
    if-ne p1, v2, :cond_6

    invoke-direct {p0, p3}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->setRedLightValue(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mResumed:Z

    iput v0, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mIsoValue:I

    invoke-direct {p0, v0}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->setRedLightValue(Z)V

    return-void
.end method

.method public resume()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mResumed:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->mIsoValue:I

    invoke-direct {p0, v0}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->setRedLightValue(Z)V

    return-void
.end method
