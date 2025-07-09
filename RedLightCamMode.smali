.class public Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;
.super Lcom/mediatek/camera/common/mode/photo/PhotoMode;
.source "RedLightCamMode.java"

# interfaces
.implements Lcom/mediatek/camera/common/mode/redlightcam/RedLightViewController$RedLightListener;


# instance fields
.field private mRedlightInfo:Lcom/mediatek/camera/common/IAppUi$HintInfo;

.field private mViewController:Lcom/mediatek/camera/common/mode/redlightcam/RedLightViewController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/camera/common/mode/photo/PhotoMode;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;)Lcom/mediatek/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;)Lcom/mediatek/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;)Lcom/mediatek/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;)Lcom/mediatek/camera/common/IAppUi$HintInfo;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;->mRedlightInfo:Lcom/mediatek/camera/common/IAppUi$HintInfo;

    return-object p0
.end method

.method static synthetic access$302(Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;Lcom/mediatek/camera/common/IAppUi$HintInfo;)Lcom/mediatek/camera/common/IAppUi$HintInfo;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;->mRedlightInfo:Lcom/mediatek/camera/common/IAppUi$HintInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;)Lcom/mediatek/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;)Lcom/mediatek/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;)Lcom/mediatek/camera/common/app/IApp;
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

    const v0, 0x7f0e0186

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

    const-string v0, "redlight"

    iget-object p0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mCameraApi:Lcom/mediatek/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-direct {p1, v0, p0, p2}, Lcom/mediatek/camera/common/mode/DeviceUsage;-><init>(Ljava/lang/String;Lcom/mediatek/camera/common/device/CameraDeviceManagerFactory$CameraApi;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method protected getPictureEnd()Ljava/lang/String;
    .locals 0

    const-string p0, "NIGHTVISION"

    return-object p0
.end method

.method protected getShutterType()Ljava/lang/String;
    .locals 0

    const-string p0, "RedLightCam"

    return-object p0
.end method

.method public init(Lcom/mediatek/camera/common/app/IApp;Lcom/mediatek/camera/common/ICameraContext;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/camera/common/mode/photo/PhotoMode;->init(Lcom/mediatek/camera/common/app/IApp;Lcom/mediatek/camera/common/ICameraContext;Z)V

    new-instance p1, Lcom/mediatek/camera/common/mode/redlightcam/RedLightViewController;

    iget-object p2, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    const p3, 0x7f080095

    invoke-direct {p1, p2, p3}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightViewController;-><init>(Lcom/mediatek/camera/common/app/IApp;I)V

    iput-object p1, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;->mViewController:Lcom/mediatek/camera/common/mode/redlightcam/RedLightViewController;

    invoke-virtual {p1, p0}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightViewController;->init(Lcom/mediatek/camera/common/mode/redlightcam/RedLightViewController$RedLightListener;)V

    iget-object p1, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;->mViewController:Lcom/mediatek/camera/common/mode/redlightcam/RedLightViewController;

    invoke-virtual {p1}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightViewController;->show()V

    invoke-virtual {p0}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;->showTips()V

    return-void
.end method

.method protected initCameraId(Z)V
    .locals 4

    invoke-static {}, Lcom/mediatek/camera/prize/FeatureSwitcher;->getRedLightCamId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

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

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initCameraId camid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RedLightCamMode"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/mediatek/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "0"

    iget-object v1, p0, Lcom/mediatek/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/mediatek/camera/common/utils/CameraUtil;->writeCameraIdToSp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mDataStore:Lcom/mediatek/camera/common/relation/DataStore;

    invoke-virtual {p1}, Lcom/mediatek/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "key_camera_switcher"

    const-string v3, "back"

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/mediatek/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/mediatek/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode$1;

    invoke-direct {v0, p0}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode$1;-><init>(Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected initDeviceController()V
    .locals 4

    new-instance v0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;

    iget-object v1, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    iget-object v2, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mICameraContext:Lcom/mediatek/camera/common/ICameraContext;

    invoke-virtual {p0}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;->isSupportRedlight()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;-><init>(Lcom/mediatek/camera/common/app/IApp;Lcom/mediatek/camera/common/ICameraContext;Z)V

    iput-object v0, p0, Lcom/mediatek/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/mediatek/camera/common/mode/photo/device/IDeviceController;

    return-void
.end method

.method protected isSupportRedlight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;->mViewController:Lcom/mediatek/camera/common/mode/redlightcam/RedLightViewController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightViewController;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public onSwitchClick()V
    .locals 2

    const-string v0, "RedLightCamMode"

    const-string v1, "onSwitchClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/mediatek/camera/common/app/IApp;->getAppUi()Lcom/mediatek/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/camera/common/IAppUi;->isCaptureOrVideo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/mediatek/camera/common/app/IApp;->getAppUi()Lcom/mediatek/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/camera/common/IAppUi;->canSwitchCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/mediatek/camera/common/app/IApp;->getAppUi()Lcom/mediatek/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/camera/common/IAppUi;->isFileSavedAfterSelftimeDown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/mediatek/camera/common/app/IApp;->getAppUi()Lcom/mediatek/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/camera/common/IAppUi;->isAnimationShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    invoke-interface {p0}, Lcom/mediatek/camera/common/app/IApp;->getAppUi()Lcom/mediatek/camera/common/IAppUi;

    move-result-object p0

    const-class v0, Lcom/mediatek/camera/common/mode/redlightvideo/RedLightVideoModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/mediatek/camera/common/IAppUi;->selectCurMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public pause(Lcom/mediatek/camera/common/mode/DeviceUsage;)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;->mViewController:Lcom/mediatek/camera/common/mode/redlightcam/RedLightViewController;

    invoke-virtual {v0}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightViewController;->hide()V

    invoke-super {p0, p1}, Lcom/mediatek/camera/common/mode/photo/PhotoMode;->pause(Lcom/mediatek/camera/common/mode/DeviceUsage;)V

    iget-object p1, p0, Lcom/mediatek/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/mediatek/camera/common/mode/photo/device/IDeviceController;

    check-cast p1, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;

    invoke-virtual {p1}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->pause()V

    iget-object p1, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/mediatek/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode$2;

    invoke-direct {v0, p0}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode$2;-><init>(Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume(Lcom/mediatek/camera/common/mode/DeviceUsage;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/mediatek/camera/common/mode/photo/PhotoMode;->resume(Lcom/mediatek/camera/common/mode/DeviceUsage;)V

    iget-object p1, p0, Lcom/mediatek/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/mediatek/camera/common/mode/photo/device/IDeviceController;

    check-cast p1, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;

    invoke-virtual {p1}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightDevice2Controller;->resume()V

    iget-object p0, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;->mViewController:Lcom/mediatek/camera/common/mode/redlightcam/RedLightViewController;

    invoke-virtual {p0}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightViewController;->show()V

    return-void
.end method

.method protected showTips()V
    .locals 4

    invoke-static {}, Lcom/mediatek/camera/prize/FeatureSwitcher;->isCustomGigaset()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mIApp:Lcom/mediatek/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/mediatek/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/mediatek/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/mediatek/camera/CameraActivity;->getmBackHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode$3;

    invoke-direct {v1, p0}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode$3;-><init>(Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unInit()V
    .locals 4

    invoke-super {p0}, Lcom/mediatek/camera/common/mode/photo/PhotoMode;->unInit()V

    iget-object v0, p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;->mViewController:Lcom/mediatek/camera/common/mode/redlightcam/RedLightViewController;

    invoke-virtual {v0}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightViewController;->uniInit()V

    iget-object p0, p0, Lcom/mediatek/camera/common/mode/CameraModeBase;->mDataStore:Lcom/mediatek/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/mediatek/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "key_camera_switcher"

    const-string v3, "back"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/mediatek/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
