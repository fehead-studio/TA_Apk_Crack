.class public interface abstract Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessibilityServiceCallbacks"
.end annotation


# virtual methods
.method public abstract onAccessibilityEvent(Lcom/androlua/LuaAccessibilityService;Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract onConfigurationChanged(Lcom/androlua/LuaAccessibilityService;Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Lcom/androlua/LuaAccessibilityService;)V
.end method

.method public abstract onDestroy(Lcom/androlua/LuaAccessibilityService;)V
.end method

.method public abstract onInterrupt(Lcom/androlua/LuaAccessibilityService;)V
.end method

.method public abstract onKeyEvent(Lcom/androlua/LuaAccessibilityService;Landroid/view/KeyEvent;)Z
.end method

.method public abstract onServiceConnected(Lcom/androlua/LuaAccessibilityService;)V
.end method
