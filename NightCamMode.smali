.class public Lcom/mediatek/camera/common/mode/nightcam/NightCamMode;
.super Lcom/mediatek/camera/common/mode/photo/PhotoMode;
.source "NightCamMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/camera/common/mode/photo/PhotoMode;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/camera/common/mode/nightcam/NightCamMode;)Lcom/mediatek/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mediatek/camera/common/mode/nightcam/NightCamMode;)Lcom/mediatek/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    return-object p0
.end method


# virtual methods
.method protected getCloseString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    invoke-interface {p0}, Lcom/mediatek/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0e017c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceUsage(Lcom/mediatek/camera/common/relation/DataStore;Lcom/mediatek/camera/common/mode/DeviceUsage;)Lcom/mediatek/camera/common/mode/DeviceUsage;
    .locals 3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_camera_switcher"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/mediatek/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mediatek/camera/common/mode/CameraModeBase;->getCameraIdByFacing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/mediatek/camera/common/mode/CameraModeBase;->updateModeDefinedCameraApi()V

    new-instance p1, Lcom/mediatek/camera/common/mode/DeviceUsage;

    const-string v0, "lownight"

    iget-object p0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mCameraApi:Lcom/mediatek/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-direct {p1, v0, p0, p2}, Lcom/mediatek/camera/common/mode/DeviceUsage;-><init>(Ljava/lang/String;Lcom/mediatek/camera/common/device/CameraDeviceManagerFactory$CameraApi;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method protected initCameraId(Z)V
    .locals 1

    invoke-static {}, Lcom/mediatek/camera/prize/FeatureSwitcher;->getNightCameraId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    iget-object p1, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/mediatek/camera/common/app/IApp;->getAppUi()Lcom/mediatek/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/mediatek/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mediatek/camera/common/IAppUi;->updateCameraId(I)V

    iget-object p1, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/mediatek/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/mediatek/camera/common/mode/nightcam/NightCamMode$1;

    invoke-direct {v0, p0}, Lcom/mediatek/camera/common/mode/nightcam/NightCamMode$1;-><init>(Lcom/mediatek/camera/common/mode/nightcam/NightCamMode;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isSupportQR()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needShowCloseButton()Z
    .locals 4

    iget v0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mNeedShowClose:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "NightCam"

    invoke-static {v0}, Lcom/mediatek/camera/prize/FeatureSwitcher;->isDefaultMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NightCam2"

    invoke-static {v0}, Lcom/mediatek/camera/prize/FeatureSwitcher;->isDefaultMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput v3, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mNeedShowClose:I

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mNeedShowClose:I

    :cond_1
    :goto_0
    iget p0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mNeedShowClose:I

    if-ne p0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public pause(Lcom/mediatek/camera/common/mode/DeviceUsage;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/mediatek/camera/common/mode/photo/PhotoMode;->pause(Lcom/mediatek/camera/common/mode/DeviceUsage;)V

    iget-object p1, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/mediatek/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/mediatek/camera/common/mode/nightcam/NightCamMode$2;

    invoke-direct {v0, p0}, Lcom/mediatek/camera/common/mode/nightcam/NightCamMode$2;-><init>(Lcom/mediatek/camera/common/mode/nightcam/NightCamMode;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
