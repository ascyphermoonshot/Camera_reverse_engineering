.class public Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamModeEntry;
.super Lcom/mediatek/camera/common/loader/FeatureEntryBase;
.source "RedLightCamModeEntry.java"


# static fields
.field private static final TAG:Lcom/mediatek/camera/common/debug/LogUtil$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mediatek/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamModeEntry;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamModeEntry;->TAG:Lcom/mediatek/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/camera/common/loader/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;

    invoke-direct {p0}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamMode;-><init>()V

    return-object p0
.end method

.method public getFeatureEntryName()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamModeEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeItem()Lcom/mediatek/camera/common/IAppUi$ModeItem;
    .locals 4

    new-instance v0, Lcom/mediatek/camera/common/IAppUi$ModeItem;

    invoke-direct {v0}, Lcom/mediatek/camera/common/IAppUi$ModeItem;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/mediatek/camera/common/IAppUi$ModeItem;->mPriority:I

    const-string v1, "RedLightCam"

    iput-object v1, v0, Lcom/mediatek/camera/common/IAppUi$ModeItem;->mType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mediatek/camera/common/mode/redlightcam/RedLightCamModeEntry;->getFeatureEntryName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/camera/common/IAppUi$ModeItem;->mClassName:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/camera/common/loader/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/mediatek/camera/common/loader/FeatureEntryBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "normal_mode_title"

    const-string v3, "string"

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/mediatek/camera/common/IAppUi$ModeItem;->mModeName:Ljava/lang/String;

    invoke-static {}, Lcom/mediatek/camera/prize/FeatureSwitcher;->getRedLightCamId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "0"

    const-string v2, "1"

    filled-new-array {v1, v2, p0}, [Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/mediatek/camera/common/IAppUi$ModeItem;->mSupportedCameraIds:[Ljava/lang/String;

    sget-object p0, Lcom/mediatek/camera/common/IAppUi$ModeTitle;->REDLIGHT_CAM:Lcom/mediatek/camera/common/IAppUi$ModeTitle;

    iput-object p0, v0, Lcom/mediatek/camera/common/IAppUi$ModeItem;->mModeTitle:Lcom/mediatek/camera/common/IAppUi$ModeTitle;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isSupport(Lcom/mediatek/camera/common/device/CameraDeviceManagerFactory$CameraApi;Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/mediatek/camera/prize/FeatureSwitcher;->getRedLightCamId()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
