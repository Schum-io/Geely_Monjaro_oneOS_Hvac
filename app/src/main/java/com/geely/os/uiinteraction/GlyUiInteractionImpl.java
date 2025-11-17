package com.geely.os.uiinteraction;

import android.content.Context;
import android.graphics.Rect;
import android.util.ArraySet;
import android.view.Display;
import android.view.View;
import com.ecarx.xui.adaptapi.uiinteraction.IUiInteraction;
import com.ecarx.xui.adaptapi.uiinteraction.IWindowManager;
import com.ecarx.xui.adaptapi.uiinteraction.UiInteraction;
import com.geely.os.car.GlyLog;
import java.util.function.Consumer;

/* loaded from: classes.dex */
class GlyUiInteractionImpl implements IGlyUiInteraction {
    private IUiInteraction uiInteraction;
    private final ArraySet<IGlyWindowObserver> mWindowObservers = new ArraySet<>();
    private final ArraySet<IGlyWindowViewObserver> mWindowViewObservers = new ArraySet<>();
    private IWindowManager.IWindowObserver windowObserver = new AnonymousClass1();
    private IWindowManager.IWindowViewObserver windowViewObserver = new AnonymousClass2();

    /* renamed from: com.geely.os.uiinteraction.GlyUiInteractionImpl$1, reason: invalid class name */
    class AnonymousClass1 implements IWindowManager.IWindowObserver {
        AnonymousClass1() {
        }

        public void onWindowAdded(IWindowManager.IWindow iWindow) {
            if (iWindow != null) {
                final IGlyWindow iGlyWindow = GlyUiInteractionImpl.this.getIGlyWindow(iWindow);
                GlyUiInteractionImpl.this.mWindowObservers.forEach(new Consumer() { // from class: com.geely.os.uiinteraction.-$$Lambda$GlyUiInteractionImpl$1$jmdGoYAyiKNxH_CNvmMRrXXm4LE
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyWindowObserver) obj).onWindowAdded(iGlyWindow);
                    }
                });
            } else {
                GlyLog.i(GlyLog.DEFAULT_TAG, "iWindow = null");
            }
        }

        public void onWindowRemoved(IWindowManager.IWindow iWindow) {
            if (iWindow != null) {
                final IGlyWindow iGlyWindow = GlyUiInteractionImpl.this.getIGlyWindow(iWindow);
                GlyUiInteractionImpl.this.mWindowObservers.forEach(new Consumer() { // from class: com.geely.os.uiinteraction.-$$Lambda$GlyUiInteractionImpl$1$u724jvNB6uWQEC1Usi12HIoS-QQ
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyWindowObserver) obj).onWindowRemoved(iGlyWindow);
                    }
                });
            } else {
                GlyLog.i(GlyLog.DEFAULT_TAG, "iWindow = null");
            }
        }
    }

    /* renamed from: com.geely.os.uiinteraction.GlyUiInteractionImpl$2, reason: invalid class name */
    class AnonymousClass2 implements IWindowManager.IWindowViewObserver {
        AnonymousClass2() {
        }

        public void onWindowVisibilityChanged(IWindowManager.IWindow iWindow, final int i) {
            if (iWindow != null) {
                final IGlyWindow iGlyWindow = GlyUiInteractionImpl.this.getIGlyWindow(iWindow);
                GlyUiInteractionImpl.this.mWindowViewObservers.forEach(new Consumer() { // from class: com.geely.os.uiinteraction.-$$Lambda$GlyUiInteractionImpl$2$CnZ7DB5M87W_U9XHvWHLQ98mGeg
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyWindowViewObserver) obj).onWindowVisibilityChanged(iGlyWindow, i);
                    }
                });
            } else {
                GlyLog.i(GlyLog.DEFAULT_TAG, "iWindow = null");
            }
        }

        public void onWindowFrameChanged(IWindowManager.IWindow iWindow, final Rect rect, final Rect rect1) {
            if (iWindow != null) {
                final IGlyWindow iGlyWindow = GlyUiInteractionImpl.this.getIGlyWindow(iWindow);
                GlyUiInteractionImpl.this.mWindowViewObservers.forEach(new Consumer() { // from class: com.geely.os.uiinteraction.-$$Lambda$GlyUiInteractionImpl$2$hgiHuoob9cRF0a0VTdYsp-II5_U
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyWindowViewObserver) obj).onWindowFrameChanged(iGlyWindow, rect, rect1);
                    }
                });
            } else {
                GlyLog.i(GlyLog.DEFAULT_TAG, "iWindow = null");
            }
        }

        public void onWindowAdded(IWindowManager.IWindow iWindow) {
            if (iWindow != null) {
                final IGlyWindow iGlyWindow = GlyUiInteractionImpl.this.getIGlyWindow(iWindow);
                GlyUiInteractionImpl.this.mWindowViewObservers.forEach(new Consumer() { // from class: com.geely.os.uiinteraction.-$$Lambda$GlyUiInteractionImpl$2$X45fgB1usydVQl2l_3RKCuFQkf8
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyWindowViewObserver) obj).onWindowAdded(iGlyWindow);
                    }
                });
            } else {
                GlyLog.i(GlyLog.DEFAULT_TAG, "iWindow = null");
            }
        }

        public void onWindowRemoved(IWindowManager.IWindow iWindow) {
            if (iWindow != null) {
                final IGlyWindow iGlyWindow = GlyUiInteractionImpl.this.getIGlyWindow(iWindow);
                GlyUiInteractionImpl.this.mWindowViewObservers.forEach(new Consumer() { // from class: com.geely.os.uiinteraction.-$$Lambda$GlyUiInteractionImpl$2$VSWhWWEPcbZb2rWF5SE0uDttLDM
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyWindowViewObserver) obj).onWindowRemoved(iGlyWindow);
                    }
                });
            } else {
                GlyLog.i(GlyLog.DEFAULT_TAG, "iWindow = null");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IGlyWindow getIGlyWindow(final IWindowManager.IWindow iWindow) {
        return new IGlyWindow() { // from class: com.geely.os.uiinteraction.GlyUiInteractionImpl.3
            @Override // com.geely.os.uiinteraction.IGlyWindow
            public int getDisplayId() {
                return iWindow.getDisplayId();
            }

            @Override // com.geely.os.uiinteraction.IGlyWindow
            public String getPackage() {
                return iWindow.getPackage();
            }

            @Override // com.geely.os.uiinteraction.IGlyWindow
            public int getType() {
                return iWindow.getType();
            }

            @Override // com.geely.os.uiinteraction.IGlyWindow
            public int getUID() {
                return iWindow.getUID();
            }

            @Override // com.geely.os.uiinteraction.IGlyWindow
            public int getViewVisibility() {
                return iWindow.getViewVisibility();
            }

            @Override // com.geely.os.uiinteraction.IGlyWindow
            public Rect getWindowFrame() {
                return iWindow.getWindowFrame();
            }

            @Override // com.geely.os.uiinteraction.IGlyWindow
            public String getWindowIdentity() {
                return iWindow.getWindowIdentity();
            }

            @Override // com.geely.os.uiinteraction.IGlyWindow
            public String getWindowTag() {
                return iWindow.getWindowTag();
            }
        };
    }

    public static IGlyUiInteraction create(Context context) {
        if (context != null) {
            return new GlyUiInteractionImpl(context);
        }
        return null;
    }

    private GlyUiInteractionImpl(Context context) {
        this.uiInteraction = UiInteraction.create(context);
    }

    @Override // com.geely.os.uiinteraction.IGlyUiInteraction
    public IGlyFreeFormWindow getFreeFormWindowManager() {
        IUiInteraction iUiInteraction = this.uiInteraction;
        if (iUiInteraction == null || iUiInteraction.getFreeFormWindowManager() == null) {
            return null;
        }
        return new IGlyFreeFormWindow() { // from class: com.geely.os.uiinteraction.GlyUiInteractionImpl.4
            @Override // com.geely.os.uiinteraction.IGlyFreeFormWindow
            public int changeFreeformWindowSize(String packageName, boolean big) {
                return GlyUiInteractionImpl.this.uiInteraction.getFreeFormWindowManager().changeFreeformWindowSize(packageName, big);
            }
        };
    }

    @Override // com.geely.os.uiinteraction.IGlyUiInteraction
    public IGlyMultiWindow getMultiWindowManager() {
        IUiInteraction iUiInteraction = this.uiInteraction;
        if (iUiInteraction == null || iUiInteraction.getMultiWindowManager() == null) {
            return null;
        }
        return new IGlyMultiWindow() { // from class: com.geely.os.uiinteraction.GlyUiInteractionImpl.5
            @Override // com.geely.os.uiinteraction.IGlyMultiWindow
            public void closeSplitScreenMode() {
                GlyUiInteractionImpl.this.uiInteraction.getMultiWindowManager().closeSplitScreenMode();
            }

            @Override // com.geely.os.uiinteraction.IGlyMultiWindow
            public void closeSplitScreenMode(int screen) {
                GlyUiInteractionImpl.this.uiInteraction.getMultiWindowManager().closeSplitScreenMode(screen);
            }

            @Override // com.geely.os.uiinteraction.IGlyMultiWindow
            public String getScreenStackPackageName(int screen) {
                return GlyUiInteractionImpl.this.uiInteraction.getMultiWindowManager().getScreenStackPackageName(screen);
            }

            @Override // com.geely.os.uiinteraction.IGlyMultiWindow
            public boolean isActivitySupportedSplitScreen(String pkg, String cls) {
                return GlyUiInteractionImpl.this.uiInteraction.getMultiWindowManager().isActivitySupportedSplitScreen(pkg, cls);
            }

            @Override // com.geely.os.uiinteraction.IGlyMultiWindow
            public boolean isInSplitScreenWindowingMode() {
                return GlyUiInteractionImpl.this.uiInteraction.getMultiWindowManager().isInSplitScreenWindowingMode();
            }

            @Override // com.geely.os.uiinteraction.IGlyMultiWindow
            public boolean isPackageSupportedSplitScreen(String pkg) {
                return GlyUiInteractionImpl.this.uiInteraction.getMultiWindowManager().isPackageSupportedSplitScreen(pkg);
            }

            @Override // com.geely.os.uiinteraction.IGlyMultiWindow
            public int isSplitScreenModeSupported() {
                return GlyUiInteractionImpl.this.uiInteraction.getMultiWindowManager().isSplitScreenModeSupported().ordinal();
            }

            @Override // com.geely.os.uiinteraction.IGlyMultiWindow
            public int moveActivityBetweenDisplay(int gesture) {
                return GlyUiInteractionImpl.this.uiInteraction.getMultiWindowManager().moveActivityBetweenDisplay(gesture);
            }

            @Override // com.geely.os.uiinteraction.IGlyMultiWindow
            public void swapDockedAndFullscreenStack() {
                GlyUiInteractionImpl.this.uiInteraction.getMultiWindowManager().swapDockedAndFullscreenStack();
            }

            @Override // com.geely.os.uiinteraction.IGlyMultiWindow
            public String getTopScreenPackageName() {
                return GlyUiInteractionImpl.this.uiInteraction.getMultiWindowManager().getTopScreenPackageName();
            }

            @Override // com.geely.os.uiinteraction.IGlyMultiWindow
            public String getBottomScreenPackageName() {
                return GlyUiInteractionImpl.this.uiInteraction.getMultiWindowManager().getBottomScreenPackageName();
            }
        };
    }

    @Override // com.geely.os.uiinteraction.IGlyUiInteraction
    public IGlyTouchManager getTouchManager() {
        IUiInteraction iUiInteraction = this.uiInteraction;
        if (iUiInteraction == null || iUiInteraction.getTouchManager() == null) {
            return null;
        }
        return new IGlyTouchManager() { // from class: com.geely.os.uiinteraction.GlyUiInteractionImpl.6
            @Override // com.geely.os.uiinteraction.IGlyTouchManager
            public boolean registerFullScreenTouchListener(int mode, View.OnTouchListener listener) {
                return GlyUiInteractionImpl.this.uiInteraction.getTouchManager().registerFullScreenTouchListener(mode, listener);
            }

            @Override // com.geely.os.uiinteraction.IGlyTouchManager
            public boolean unregisterFullScreenTouchListener(View.OnTouchListener listener) {
                return GlyUiInteractionImpl.this.uiInteraction.getTouchManager().unregisterFullScreenTouchListener(listener);
            }
        };
    }

    @Override // com.geely.os.uiinteraction.IGlyUiInteraction
    public IGlyWindowManager getWindowManager() {
        IUiInteraction iUiInteraction = this.uiInteraction;
        if (iUiInteraction == null || iUiInteraction.getWindowManager() == null) {
            return null;
        }
        return new IGlyWindowManager() { // from class: com.geely.os.uiinteraction.GlyUiInteractionImpl.7
            @Override // com.geely.os.uiinteraction.IGlyWindowManager
            public IGlyWindow[] getWindowList() {
                IWindowManager.IWindow[] windowList = GlyUiInteractionImpl.this.uiInteraction.getWindowManager().getWindowList();
                if (windowList == null || windowList.length <= 0) {
                    return null;
                }
                IGlyWindow[] iGlyWindowArr = new IGlyWindow[windowList.length];
                for (int i = 0; i < windowList.length; i++) {
                    iGlyWindowArr[i] = GlyUiInteractionImpl.this.getIGlyWindow(windowList[i]);
                }
                return iGlyWindowArr;
            }

            @Override // com.geely.os.uiinteraction.IGlyWindowManager
            public boolean registerWindowObserver(IGlyWindowObserver observer) {
                GlyUiInteractionImpl.this.mWindowObservers.add(observer);
                return GlyUiInteractionImpl.this.uiInteraction.getWindowManager().registerWindowObserver(GlyUiInteractionImpl.this.windowObserver);
            }

            @Override // com.geely.os.uiinteraction.IGlyWindowManager
            public boolean unregisterWindowObserver(IGlyWindowObserver observer) {
                GlyUiInteractionImpl.this.mWindowObservers.remove(observer);
                return GlyUiInteractionImpl.this.uiInteraction.getWindowManager().unregisterWindowObserver(GlyUiInteractionImpl.this.windowObserver);
            }

            @Override // com.geely.os.uiinteraction.IGlyWindowManager
            public boolean registerWindowViewObserver(IGlyWindowViewObserver observer) {
                GlyUiInteractionImpl.this.mWindowViewObservers.add(observer);
                return GlyUiInteractionImpl.this.uiInteraction.getWindowManager().registerWindowObserver(GlyUiInteractionImpl.this.windowViewObserver);
            }

            @Override // com.geely.os.uiinteraction.IGlyWindowManager
            public boolean unregisterWindowViewObserver(IGlyWindowViewObserver observer) {
                GlyUiInteractionImpl.this.mWindowViewObservers.remove(observer);
                return GlyUiInteractionImpl.this.uiInteraction.getWindowManager().unregisterWindowObserver(GlyUiInteractionImpl.this.windowViewObserver);
            }
        };
    }

    @Override // com.geely.os.uiinteraction.IGlyUiInteraction
    public int startApplicationToDisplay(String pkg, Display from, Display target) {
        IUiInteraction iUiInteraction = this.uiInteraction;
        if (iUiInteraction != null) {
            return iUiInteraction.startApplicationToDisplay(pkg, from, target).ordinal();
        }
        return GlyCallStatus.ERROR;
    }
}
