.class public Lcom/mediatek/camera/prize/FeatureSwitcher;
.super Ljava/lang/Object;
.source "FeatureSwitcher.java"


# static fields
.field private static IS_LOW_PLATFORM:I

.field private static IS_S5_DUALCAM:I

.field private static final LOW_SPEED_PLATFORMS:[Ljava/lang/String;

.field private static SUPPORT_MODES:Ljava/lang/String;

.field private static final TAG:Lcom/mediatek/camera/common/debug/LogUtil$Tag;

.field public static final WIDEANGLE_SCALE:F

.field private static mSurpportZoomCamera:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/mediatek/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/mediatek/camera/prize/FeatureSwitcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/camera/prize/FeatureSwitcher;->TAG:Lcom/mediatek/camera/common/debug/LogUtil$Tag;

    const/4 v0, -0x1

    sput v0, Lcom/mediatek/camera/prize/FeatureSwitcher;->IS_LOW_PLATFORM:I

    sput v0, Lcom/mediatek/camera/prize/FeatureSwitcher;->mSurpportZoomCamera:I

    sput v0, Lcom/mediatek/camera/prize/FeatureSwitcher;->IS_S5_DUALCAM:I

    const-string v0, "ro.odm.widezoom5"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/mediatek/camera/prize/FeatureSwitcher;->WIDEANGLE_SCALE:F

    goto :goto_0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    sput v0, Lcom/mediatek/camera/prize/FeatureSwitcher;->WIDEANGLE_SCALE:F

    :goto_0
    const-string v1, "MT6763"

    const-string v2, "MT6761"

    const-string v3, "MT6739"

    const-string v4, "MT6580"

    const-string v5, ""

    const-string v6, ""

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/camera/prize/FeatureSwitcher;->LOW_SPEED_PLATFORMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRedLightCamId()I
    .locals 2

    const-string v0, "ro.odm.redlight.camid"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRedlightIsoValue()I
    .locals 2

    const-string v0, "ro.odm.redlightiso"

    const/16 v1, 0x190

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
