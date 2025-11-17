package com.geely.os.diminteraction;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.util.ArraySet;
import com.ecarx.xui.adaptapi.diminteraction.DimInteraction;
import com.ecarx.xui.adaptapi.diminteraction.IContactsInteraction;
import com.ecarx.xui.adaptapi.diminteraction.IDimMenuInteraction;
import com.ecarx.xui.adaptapi.diminteraction.IMediaInteraction;
import com.ecarx.xui.adaptapi.diminteraction.INaviInteraction;
import com.ecarx.xui.adaptapi.diminteraction.IPhoneCallInteraction;
import com.ecarx.xui.adaptapi.diminteraction.IVendorInteraction;
import com.ecarx.xui.adaptapi.diminteraction.IVrInteraction;
import com.ecarx.xui.adaptapi.diminteraction.LastRangeInfo;
import com.ecarx.xui.adaptapi.diminteraction.NaviInfo;
import com.ecarx.xui.adaptapi.diminteraction.NaviStatus;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
class GlyDimInteractionImpl implements IGlyDimInteraction {
    private IContactsInteraction iContactsInteraction;
    private IDimMenuInteraction iDimMenuInteraction;
    private IMediaInteraction iMediaInteraction;
    private INaviInteraction iNaviInteraction;
    private IPhoneCallInteraction iPhoneCallInteraction;
    private IVendorInteraction iVendorInteraction;
    private IVrInteraction iVrInteraction;
    private DimInteraction mDimInteraction;
    private ArraySet<IGlyVrInteractionCallback> mVrInteractionCallbacks = new ArraySet<>();
    private IVrInteraction.IVrInteractionCallback iVrInteractionCallback = new AnonymousClass1();
    private ArraySet<IGlyContactsInteractionCallback> mCtInteractionCallbacks = new ArraySet<>();
    private IContactsInteraction.IContactsInteractionCallback iContactsInteractionCallback = new AnonymousClass2();
    private ArraySet<IGlyDimMenuInteractionCallback> mDimMenuInteractionCallbacks = new ArraySet<>();
    IDimMenuInteraction.IDimMenuInteractionCallback iDimMenuInteractionCallback = new AnonymousClass4();
    private ArraySet<IGlyMediaInteractionCallback> mMediaInteractionCallbacks = new ArraySet<>();
    IMediaInteraction.IMediaInteractionCallback iMediaInteractionCallback = new AnonymousClass7();
    private ArraySet<IGlyNavigationInteractionCallback> mNavInteractionCallbacks = new ArraySet<>();
    INaviInteraction.INavigationInteractionCallback iNavigationInteractionCallback = new AnonymousClass9();
    private ArraySet<IGlyPhoneCallInteractionCallback> mPhoneInteractionCallbacks = new ArraySet<>();
    IPhoneCallInteraction.IPhoneCallInteractionCallback iPhoneCallInteractionCallback = new AnonymousClass11();
    private ArraySet<IGlyVendorInteractionCallback> mVendorInteractionCallbacks = new ArraySet<>();
    IVendorInteraction.IVendorInteractionCallback iVendorInteractionCallback = new AnonymousClass13();
    private ArraySet<IGlyInteractionCallback> mMainInteractionCallbacks = new ArraySet<>();
    DimInteraction.IInteractionCallback iInteractionCallback = new AnonymousClass15();

    /* renamed from: com.geely.os.diminteraction.GlyDimInteractionImpl$1, reason: invalid class name */
    class AnonymousClass1 implements IVrInteraction.IVrInteractionCallback {
        AnonymousClass1() {
        }

        public void onVrInfoUpdateReqired() {
            GlyDimInteractionImpl.this.mVrInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$1$h4E6bBvTrWRuYYydCyDLtG7PCA4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyVrInteractionCallback) obj).onVrInfoUpdateReqired();
                }
            });
        }

        public void onDoInteractionAction(final int i, final int i1, final Object o) {
            GlyDimInteractionImpl.this.mVrInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$1$aTYx5c5ucqCkyXfZTp3t9xlyw6A
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyVrInteractionCallback) obj).onDoInteractionAction(i, i1, o);
                }
            });
        }
    }

    /* renamed from: com.geely.os.diminteraction.GlyDimInteractionImpl$2, reason: invalid class name */
    class AnonymousClass2 implements IContactsInteraction.IContactsInteractionCallback {
        AnonymousClass2() {
        }

        public void onDoContactInteractionAction(final int i, final String s) {
            GlyDimInteractionImpl.this.mCtInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$2$oOZqPh4WLwtoJbxAl2jTWrC8gTk
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyContactsInteractionCallback) obj).onDoContactInteractionAction(i, s);
                }
            });
        }

        public void onSearchContacts(final int i, final String s) {
            GlyDimInteractionImpl.this.mCtInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$2$gBB1bufXEAgYOGdMUhFoo8hEuds
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyContactsInteractionCallback) obj).onSearchContacts(i, s);
                }
            });
        }
    }

    public GlyDimInteractionImpl(Context context) {
        DimInteraction dimInteractionCreate = DimInteraction.create(context);
        this.mDimInteraction = dimInteractionCreate;
        if (dimInteractionCreate != null) {
            this.iVrInteraction = dimInteractionCreate.getVrInteraction();
            this.iContactsInteraction = this.mDimInteraction.getContactsInteraction();
            this.iDimMenuInteraction = this.mDimInteraction.getDimMenuInteraction();
            this.iMediaInteraction = this.mDimInteraction.getMediaInteraction();
            this.iNaviInteraction = this.mDimInteraction.getNaviInteraction();
            this.iVendorInteraction = this.mDimInteraction.getVendorInteraction();
            this.iPhoneCallInteraction = this.mDimInteraction.getPhoneCallInteraction();
        }
    }

    public static IGlyDimInteraction create(Context context) {
        if (context != null) {
            return new GlyDimInteractionImpl(context);
        }
        return null;
    }

    @Override // com.geely.os.diminteraction.IGlyDimInteraction
    public IGlyContactsInteraction getContactsInteraction() {
        if (this.iContactsInteraction != null) {
            return new IGlyContactsInteraction() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.3
                @Override // com.geely.os.diminteraction.IGlyContactsInteraction
                public void registerContactsInteractionCallback(IGlyContactsInteractionCallback callback) {
                    if (GlyDimInteractionImpl.this.iContactsInteractionCallback == null || callback == null) {
                        return;
                    }
                    GlyDimInteractionImpl.this.mCtInteractionCallbacks.add(callback);
                    GlyDimInteractionImpl.this.iContactsInteraction.registerContactsInteractionCallback(GlyDimInteractionImpl.this.iContactsInteractionCallback);
                }

                @Override // com.geely.os.diminteraction.IGlyContactsInteraction
                public void unregisterContactsInteractionCallback(IGlyContactsInteractionCallback callback) {
                    if (GlyDimInteractionImpl.this.iContactsInteractionCallback == null || callback == null) {
                        return;
                    }
                    GlyDimInteractionImpl.this.mCtInteractionCallbacks.remove(callback);
                    GlyDimInteractionImpl.this.iContactsInteraction.registerContactsInteractionCallback(GlyDimInteractionImpl.this.iContactsInteractionCallback);
                }

                @Override // com.geely.os.diminteraction.IGlyContactsInteraction
                public void updateCallLogList(List<IGlyCallLog> callLogs) {
                    ArrayList arrayList = new ArrayList();
                    if (callLogs != null) {
                        for (final IGlyCallLog iGlyCallLog : callLogs) {
                            arrayList.add(new IContactsInteraction.ICallLog() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.3.1
                                public Uri getAvatar() {
                                    return iGlyCallLog.getAvatar();
                                }

                                public String getContactName() {
                                    return iGlyCallLog.getContactName();
                                }

                                public String getContactNumber() {
                                    return iGlyCallLog.getContactNumber();
                                }

                                public int getCallType() {
                                    return iGlyCallLog.getCallType();
                                }

                                public long getTimestamp() {
                                    return iGlyCallLog.getTimestamp();
                                }

                                public int getCount() {
                                    return iGlyCallLog.getCount();
                                }
                            });
                        }
                    }
                    GlyDimInteractionImpl.this.iContactsInteraction.updateCallLogList(arrayList);
                }

                @Override // com.geely.os.diminteraction.IGlyContactsInteraction
                public void updateContacts(int type, List<IGlyContact> contacts) {
                    ArrayList arrayList = new ArrayList();
                    if (contacts != null) {
                        for (final IGlyContact iGlyContact : contacts) {
                            arrayList.add(new IContactsInteraction.IContact() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.3.2
                                public String getName() {
                                    return iGlyContact.getName();
                                }

                                public String getNumber() {
                                    return iGlyContact.getNumber();
                                }

                                public Uri getAvatar() {
                                    return iGlyContact.getAvatar();
                                }

                                public int getType() {
                                    return iGlyContact.getType();
                                }
                            });
                        }
                    }
                    GlyDimInteractionImpl.this.iContactsInteraction.updateContacts(type, arrayList);
                }

                @Override // com.geely.os.diminteraction.IGlyContactsInteraction
                public void updateSearchContacts(int type, List<IGlyContact> contacts, String keyword) {
                    ArrayList arrayList = new ArrayList();
                    if (contacts != null) {
                        for (final IGlyContact iGlyContact : contacts) {
                            arrayList.add(new IContactsInteraction.IContact() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.3.3
                                public String getName() {
                                    return iGlyContact.getName();
                                }

                                public String getNumber() {
                                    return iGlyContact.getNumber();
                                }

                                public Uri getAvatar() {
                                    return iGlyContact.getAvatar();
                                }

                                public int getType() {
                                    return iGlyContact.getType();
                                }
                            });
                        }
                    }
                    GlyDimInteractionImpl.this.iContactsInteraction.updateSearchContacts(type, arrayList, keyword);
                }
            };
        }
        return null;
    }

    /* renamed from: com.geely.os.diminteraction.GlyDimInteractionImpl$4, reason: invalid class name */
    class AnonymousClass4 implements IDimMenuInteraction.IDimMenuInteractionCallback {
        AnonymousClass4() {
        }

        public void onThemeChanged(final int i) {
            GlyDimInteractionImpl.this.mDimMenuInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$4$40ZC3HCpRm7vKaAQGummit1f7XE
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyDimMenuInteractionCallback) obj).onThemeChanged(i);
                }
            });
        }

        public void onTabChanged(final int i) {
            GlyDimInteractionImpl.this.mDimMenuInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$4$3xOTSIGEQUCBbMejEPfaq8H30lA
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyDimMenuInteractionCallback) obj).onTabChanged(i);
                }
            });
        }

        public void onChangeNaviMode(final int i) {
            GlyDimInteractionImpl.this.mDimMenuInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$4$h_eWUea6nFdLTxsxY4jza_7iW-I
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyDimMenuInteractionCallback) obj).onChangeNaviMode(i);
                }
            });
        }

        public void onControlCenterStateChanged(final int i) {
            GlyDimInteractionImpl.this.mDimMenuInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$4$fOik8xv8cjpps6Zz190nYpehlLs
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyDimMenuInteractionCallback) obj).onControlCenterStateChanged(i);
                }
            });
        }

        public void onEngineStatusChanged(final boolean b) {
            GlyDimInteractionImpl.this.mDimMenuInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$4$Rg0PTZcdXKapzjmAkqkI-P6pvlQ
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyDimMenuInteractionCallback) obj).onEngineStatusChanged(b);
                }
            });
        }

        public void onVolumeBarStatusChanged(final boolean b) {
            GlyDimInteractionImpl.this.mDimMenuInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$4$X-sigjMQJENgHCOAzQJtKaCk-Xw
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyDimMenuInteractionCallback) obj).onVolumeBarStatusChanged(b);
                }
            });
        }
    }

    @Override // com.geely.os.diminteraction.IGlyDimInteraction
    public IGlyDimMenuInteraction getDimMenuInteraction() {
        if (this.iDimMenuInteraction != null) {
            return new IGlyDimMenuInteraction() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.5
                @Override // com.geely.os.diminteraction.IGlyDimMenuInteraction
                public int getNaviMode() {
                    return GlyDimInteractionImpl.this.iDimMenuInteraction.getNaviMode();
                }

                @Override // com.geely.os.diminteraction.IGlyDimMenuInteraction
                public void notifyDimControlCenterActiveType(int activeType) {
                    GlyDimInteractionImpl.this.iDimMenuInteraction.notifyDimControlCenterActiveType(activeType);
                }

                @Override // com.geely.os.diminteraction.IGlyDimMenuInteraction
                public void notifyDimEnterControlCenter(int enterControlCenterAction) {
                    GlyDimInteractionImpl.this.iDimMenuInteraction.notifyDimControlCenterActiveType(enterControlCenterAction);
                }

                @Override // com.geely.os.diminteraction.IGlyDimMenuInteraction
                public void notifyDimSwitchThemeCompeted(boolean completed) {
                    GlyDimInteractionImpl.this.iDimMenuInteraction.notifyDimSwitchThemeCompeted(completed);
                }

                @Override // com.geely.os.diminteraction.IGlyDimMenuInteraction
                public void notifyIHUReady() {
                    GlyDimInteractionImpl.this.iDimMenuInteraction.notifyIHUReady();
                }

                @Override // com.geely.os.diminteraction.IGlyDimMenuInteraction
                public void registerDimMenuInteractionCallback(IGlyDimMenuInteractionCallback callback) {
                    if (GlyDimInteractionImpl.this.iDimMenuInteractionCallback == null || callback == null) {
                        return;
                    }
                    GlyDimInteractionImpl.this.mDimMenuInteractionCallbacks.add(callback);
                    GlyDimInteractionImpl.this.iDimMenuInteraction.registerDimMenuInteractionCallback(GlyDimInteractionImpl.this.iDimMenuInteractionCallback);
                }

                @Override // com.geely.os.diminteraction.IGlyDimMenuInteraction
                public void requestDimSwitchTabWindow(int tab) {
                    GlyDimInteractionImpl.this.iDimMenuInteraction.requestDimSwitchTabWindow(tab);
                }

                @Override // com.geely.os.diminteraction.IGlyDimMenuInteraction
                public void requestDimTheme() {
                    GlyDimInteractionImpl.this.iDimMenuInteraction.requestDimTheme();
                }

                @Override // com.geely.os.diminteraction.IGlyDimMenuInteraction
                public void setVolume(boolean isMute, int volume) {
                    GlyDimInteractionImpl.this.iDimMenuInteraction.setVolume(isMute, volume);
                }

                @Override // com.geely.os.diminteraction.IGlyDimMenuInteraction
                public void setVolume(int volume) {
                    GlyDimInteractionImpl.this.iDimMenuInteraction.setVolume(volume);
                }

                @Override // com.geely.os.diminteraction.IGlyDimMenuInteraction
                public boolean switchNaviMode(int naviMode) {
                    return GlyDimInteractionImpl.this.iDimMenuInteraction.switchNaviMode(naviMode);
                }

                @Override // com.geely.os.diminteraction.IGlyDimMenuInteraction
                public void unregisterDimMenuInteractionCallback(IGlyDimMenuInteractionCallback callback) {
                    if (GlyDimInteractionImpl.this.iDimMenuInteractionCallback == null || callback == null) {
                        return;
                    }
                    GlyDimInteractionImpl.this.mDimMenuInteractionCallbacks.remove(callback);
                    GlyDimInteractionImpl.this.iDimMenuInteraction.unregisterDimMenuInteractionCallback(GlyDimInteractionImpl.this.iDimMenuInteractionCallback);
                }
            };
        }
        return null;
    }

    @Override // com.geely.os.diminteraction.IGlyDimInteraction
    public IGlyVrInteraction getVrInteraction() {
        if (this.iVrInteraction != null) {
            return new IGlyVrInteraction() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.6
                @Override // com.geely.os.diminteraction.IGlyVrInteraction
                public void notifyVoiceToTextCompleted(String text) {
                    GlyDimInteractionImpl.this.iVrInteraction.notifyVoiceToTextCompleted(text);
                }

                @Override // com.geely.os.diminteraction.IGlyVrInteraction
                public void notifyVrSearchStates(int state) {
                    GlyDimInteractionImpl.this.iVrInteraction.notifyVrSearchStates(state);
                }

                @Override // com.geely.os.diminteraction.IGlyVrInteraction
                public void notifyVrStatusChanged(int vrStatusBefore, int vrStatusCurrent) {
                    GlyDimInteractionImpl.this.iVrInteraction.notifyVrStatusChanged(vrStatusBefore, vrStatusCurrent);
                }

                @Override // com.geely.os.diminteraction.IGlyVrInteraction
                public void notifyVrTTSText(String ttsText) {
                    GlyDimInteractionImpl.this.iVrInteraction.notifyVrTTSText(ttsText);
                }

                @Override // com.geely.os.diminteraction.IGlyVrInteraction
                public void registerVrCallback(IGlyVrInteractionCallback callback) {
                    if (GlyDimInteractionImpl.this.iVrInteractionCallback == null || callback == null) {
                        return;
                    }
                    GlyDimInteractionImpl.this.mVrInteractionCallbacks.add(callback);
                    GlyDimInteractionImpl.this.iVrInteraction.registerVrCallback(GlyDimInteractionImpl.this.iVrInteractionCallback);
                }

                @Override // com.geely.os.diminteraction.IGlyVrInteraction
                public void unRegisterVrCallback(IGlyVrInteractionCallback callback) {
                    if (GlyDimInteractionImpl.this.iVrInteractionCallback == null || callback == null) {
                        return;
                    }
                    GlyDimInteractionImpl.this.mVrInteractionCallbacks.remove(callback);
                    GlyDimInteractionImpl.this.iVrInteraction.unRegisterVrCallback(GlyDimInteractionImpl.this.iVrInteractionCallback);
                }
            };
        }
        return null;
    }

    /* renamed from: com.geely.os.diminteraction.GlyDimInteractionImpl$7, reason: invalid class name */
    class AnonymousClass7 implements IMediaInteraction.IMediaInteractionCallback {
        AnonymousClass7() {
        }

        public void onMediaHighlighted(final IMediaInteraction.IMedia iGlyMedia) {
            if (iGlyMedia == null) {
                return;
            }
            final IGlyMedia iGlyMedia2 = new IGlyMedia() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.7.1
                @Override // com.geely.os.diminteraction.IGlyMedia
                public String getUUID() {
                    return iGlyMedia.getUUID();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public String getTitle() {
                    return iGlyMedia.getTitle();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public String getArtist() {
                    return iGlyMedia.getArtist();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public String getAlbum() {
                    return iGlyMedia.getAlbum();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public long getDuration() {
                    return iGlyMedia.getDuration();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public int getPlayingItemPositionInQueue() {
                    return iGlyMedia.getPlayingItemPositionInQueue();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public int getSourceType() {
                    return iGlyMedia.getSourceType();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public Uri getMediaPath() {
                    return iGlyMedia.getMediaPath();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public String getLyricContent() {
                    return iGlyMedia.getLyricContent();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public Uri getLyric() {
                    return iGlyMedia.getLyric();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public Uri getArtwork() {
                    return iGlyMedia.getArtwork();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public String getRadioFrequency() {
                    return iGlyMedia.getRadioFrequency();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public String getRadioStationName() {
                    return iGlyMedia.getRadioStationName();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public int getFavoriteState() {
                    return iGlyMedia.getFavoriteState();
                }
            };
            GlyDimInteractionImpl.this.mMediaInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$7$Iw5SV7zDnrMGzFqvd438hSpr45E
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyMediaInteractionCallback) obj).onMediaHighlighted(iGlyMedia2);
                }
            });
        }

        public void onMediaSelected(final IMediaInteraction.IMedia iGlyMedia) {
            if (iGlyMedia == null) {
                return;
            }
            final IGlyMedia iGlyMedia2 = new IGlyMedia() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.7.2
                @Override // com.geely.os.diminteraction.IGlyMedia
                public String getUUID() {
                    return iGlyMedia.getUUID();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public String getTitle() {
                    return iGlyMedia.getTitle();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public String getArtist() {
                    return iGlyMedia.getArtist();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public String getAlbum() {
                    return iGlyMedia.getAlbum();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public long getDuration() {
                    return iGlyMedia.getDuration();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public int getPlayingItemPositionInQueue() {
                    return iGlyMedia.getPlayingItemPositionInQueue();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public int getSourceType() {
                    return iGlyMedia.getSourceType();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public Uri getMediaPath() {
                    return iGlyMedia.getMediaPath();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public String getLyricContent() {
                    return iGlyMedia.getLyricContent();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public Uri getLyric() {
                    return iGlyMedia.getLyric();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public Uri getArtwork() {
                    return iGlyMedia.getArtwork();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public String getRadioFrequency() {
                    return iGlyMedia.getRadioFrequency();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public String getRadioStationName() {
                    return iGlyMedia.getRadioStationName();
                }

                @Override // com.geely.os.diminteraction.IGlyMedia
                public int getFavoriteState() {
                    return iGlyMedia.getFavoriteState();
                }
            };
            GlyDimInteractionImpl.this.mMediaInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$7$eg3RQoKvBcnkoKT2Ppitid84pX0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyMediaInteractionCallback) obj).onMediaSelected(iGlyMedia2);
                }
            });
        }

        public void onSourceSelected(final int i) {
            GlyDimInteractionImpl.this.mMediaInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$7$4eXNQUKbF9BTrynDND18e9IEe_o
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyMediaInteractionCallback) obj).onSourceSelected(i);
                }
            });
        }

        public void onUpdateMediaStatusRequest(final int i) {
            GlyDimInteractionImpl.this.mMediaInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$7$i1uMPbVQ13lUkZ-MhFpU9FY9MXo
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyMediaInteractionCallback) obj).onUpdateMediaStatusRequest(i);
                }
            });
        }
    }

    @Override // com.geely.os.diminteraction.IGlyDimInteraction
    public IGlyMediaInteraction getMediaInteraction() {
        if (this.iMediaInteraction != null) {
            return new IGlyMediaInteraction() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.8
                @Override // com.geely.os.diminteraction.IGlyMediaInteraction
                public void setMediaInteractionCallback(IGlyMediaInteractionCallback callback) {
                    if (GlyDimInteractionImpl.this.iMediaInteractionCallback == null || callback == null) {
                        return;
                    }
                    GlyDimInteractionImpl.this.mMediaInteractionCallbacks.add(callback);
                    GlyDimInteractionImpl.this.iMediaInteraction.setMediaInteractionCallback(GlyDimInteractionImpl.this.iMediaInteractionCallback);
                }

                @Override // com.geely.os.diminteraction.IGlyMediaInteraction
                public void unsetMediaInteractionCallback(IGlyMediaInteractionCallback callback) {
                    if (GlyDimInteractionImpl.this.iMediaInteractionCallback == null || callback == null) {
                        return;
                    }
                    GlyDimInteractionImpl.this.mMediaInteractionCallbacks.remove(callback);
                    GlyDimInteractionImpl.this.iMediaInteraction.unsetMediaInteractionCallback(GlyDimInteractionImpl.this.iMediaInteractionCallback);
                }

                @Override // com.geely.os.diminteraction.IGlyMediaInteraction
                public void updateCurrentProgress(long progress) {
                    GlyDimInteractionImpl.this.iMediaInteraction.updateCurrentProgress(progress);
                }

                @Override // com.geely.os.diminteraction.IGlyMediaInteraction
                public void updateCurrentSourceType(int sourceType) {
                    GlyDimInteractionImpl.this.iMediaInteraction.updateCurrentSourceType(sourceType);
                }

                @Override // com.geely.os.diminteraction.IGlyMediaInteraction
                public void updateExtensionInfo(Bundle extensionInfo) {
                    GlyDimInteractionImpl.this.iMediaInteraction.updateExtensionInfo(extensionInfo);
                }

                @Override // com.geely.os.diminteraction.IGlyMediaInteraction
                public void updateMediaMuteState(int state) {
                    GlyDimInteractionImpl.this.iMediaInteraction.updateMediaMuteState(state);
                }

                @Override // com.geely.os.diminteraction.IGlyMediaInteraction
                public void updateMediaSourceTypeList(int[] sourceTypeList) {
                    GlyDimInteractionImpl.this.iMediaInteraction.updateMediaSourceTypeList(sourceTypeList);
                }

                @Override // com.geely.os.diminteraction.IGlyMediaInteraction
                public void updatePlaybackInfo(final IGlyPlaybackInfo playbackInfo) {
                    if (playbackInfo != null) {
                        GlyDimInteractionImpl.this.iMediaInteraction.updatePlaybackInfo(new IMediaInteraction.IPlaybackInfo() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.8.1
                            public String getUUID() {
                                return playbackInfo.getUUID();
                            }

                            public String getTitle() {
                                return playbackInfo.getTitle();
                            }

                            public String getArtist() {
                                return playbackInfo.getArtist();
                            }

                            public String getAlbum() {
                                return playbackInfo.getAlbum();
                            }

                            public String getRadioFrequency() {
                                return playbackInfo.getRadioFrequency();
                            }

                            public String getRadioStationName() {
                                return playbackInfo.getRadioStationName();
                            }

                            public long getDuration() {
                                return playbackInfo.getDuration();
                            }

                            public int getPlayingItemPositionInQueue() {
                                return playbackInfo.getPlayingItemPositionInQueue();
                            }

                            public int getSourceType() {
                                return playbackInfo.getSourceType();
                            }

                            public Uri getMediaPath() {
                                return playbackInfo.getMediaPath();
                            }

                            public int getPlaybackStatus() {
                                return playbackInfo.getPlaybackStatus();
                            }

                            public String getLyricContent() {
                                return playbackInfo.getLyricContent();
                            }

                            public Uri getLyric() {
                                return playbackInfo.getLyric();
                            }

                            public String getCurrentLyricSentence() {
                                return playbackInfo.getCurrentLyricSentence();
                            }

                            public Uri getPreviousArtwork() {
                                return playbackInfo.getPreviousArtwork();
                            }

                            public Uri getArtwork() {
                                return playbackInfo.getArtwork();
                            }

                            public Uri getNextArtwork() {
                                return playbackInfo.getNextArtwork();
                            }

                            public int getLoopMode() {
                                return playbackInfo.getLoopMode();
                            }

                            public int getRadioMode() {
                                return playbackInfo.getRadioMode();
                            }

                            public int getFavoriteState() {
                                return playbackInfo.getFavoriteState();
                            }
                        });
                    }
                }

                @Override // com.geely.os.diminteraction.IGlyMediaInteraction
                public void updatePlaylist(int sourceType, List<IGlyMedia> playlist) {
                    ArrayList arrayList = new ArrayList();
                    if (playlist != null) {
                        for (final IGlyMedia iGlyMedia : playlist) {
                            arrayList.add(new IMediaInteraction.IMedia() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.8.2
                                public String getUUID() {
                                    return iGlyMedia.getUUID();
                                }

                                public String getTitle() {
                                    return iGlyMedia.getTitle();
                                }

                                public String getArtist() {
                                    return iGlyMedia.getArtist();
                                }

                                public String getAlbum() {
                                    return iGlyMedia.getAlbum();
                                }

                                public long getDuration() {
                                    return iGlyMedia.getDuration();
                                }

                                public int getPlayingItemPositionInQueue() {
                                    return iGlyMedia.getPlayingItemPositionInQueue();
                                }

                                public int getSourceType() {
                                    return iGlyMedia.getSourceType();
                                }

                                public Uri getMediaPath() {
                                    return iGlyMedia.getMediaPath();
                                }

                                public String getLyricContent() {
                                    return iGlyMedia.getLyricContent();
                                }

                                public Uri getLyric() {
                                    return iGlyMedia.getLyric();
                                }

                                public Uri getArtwork() {
                                    return iGlyMedia.getArtwork();
                                }

                                public String getRadioFrequency() {
                                    return iGlyMedia.getRadioFrequency();
                                }

                                public String getRadioStationName() {
                                    return iGlyMedia.getRadioStationName();
                                }

                                public int getFavoriteState() {
                                    return iGlyMedia.getFavoriteState();
                                }
                            });
                        }
                    }
                    GlyDimInteractionImpl.this.iMediaInteraction.updatePlaylist(sourceType, arrayList);
                }
            };
        }
        return null;
    }

    /* renamed from: com.geely.os.diminteraction.GlyDimInteractionImpl$9, reason: invalid class name */
    class AnonymousClass9 implements INaviInteraction.INavigationInteractionCallback {
        AnonymousClass9() {
        }

        public void onDoInteractionAction(final int i, final INaviInteraction.IAddress iAddress) {
            if (iAddress == null) {
                return;
            }
            final IGlyAddress iGlyAddress = new IGlyAddress() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.9.1
                @Override // com.geely.os.diminteraction.IGlyAddress
                public String getAddressName() {
                    return iAddress.getAddressName();
                }

                @Override // com.geely.os.diminteraction.IGlyAddress
                public String getCityName() {
                    return iAddress.getCityName();
                }

                @Override // com.geely.os.diminteraction.IGlyAddress
                public long getDistance() {
                    return iAddress.getDistance();
                }

                @Override // com.geely.os.diminteraction.IGlyAddress
                public String getFullAddress() {
                    return iAddress.getFullAddress();
                }

                @Override // com.geely.os.diminteraction.IGlyAddress
                public double getLatitude() {
                    return iAddress.getLatitude();
                }

                @Override // com.geely.os.diminteraction.IGlyAddress
                public double getLongitude() {
                    return iAddress.getLongitude();
                }
            };
            GlyDimInteractionImpl.this.mNavInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$9$HSkkxXfwtEfbfpqjjnMwMIH-SKo
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyNavigationInteractionCallback) obj).onDoInteractionAction(i, iGlyAddress);
                }
            });
        }

        public void onSearchAddress(final String s) {
            GlyDimInteractionImpl.this.mNavInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$9$-ILuSIXki5E_J3OSDFYaqOgS7kA
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyNavigationInteractionCallback) obj).onSearchAddress(s);
                }
            });
        }
    }

    @Override // com.geely.os.diminteraction.IGlyDimInteraction
    public IGlyNaviInteraction getNaviInteraction() {
        if (this.iNaviInteraction != null) {
            return new IGlyNaviInteraction() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.10
                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void notifyTurnByTurnStarted() {
                    GlyDimInteractionImpl.this.iNaviInteraction.notifyTurnByTurnStarted();
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void notifyTurnByTurnStopped() {
                    GlyDimInteractionImpl.this.iNaviInteraction.notifyTurnByTurnStopped();
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void notifyNavigationStatus(int status) {
                    GlyDimInteractionImpl.this.iNaviInteraction.notifyNavigationStatus(status);
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateETA(int eta) {
                    GlyDimInteractionImpl.this.iNaviInteraction.updateETA(eta);
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateDistanceToDestination(int distanceToDestination) {
                    GlyDimInteractionImpl.this.iNaviInteraction.updateDistanceToDestination(distanceToDestination);
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateTotalDistanceToDestination(int totalDistanceToDestination) {
                    GlyDimInteractionImpl.this.iNaviInteraction.updateDistanceToDestination(totalDistanceToDestination);
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateDistanceToNextGuidancePoint(int distanceToNextGuidancePoint) {
                    GlyDimInteractionImpl.this.iNaviInteraction.updateDistanceToNextGuidancePoint(distanceToNextGuidancePoint);
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void UpdateDistanceToNextGuidancePoint(String paramDistance, int paramUnit) {
                    GlyDimInteractionImpl.this.iNaviInteraction.UpdateDistanceToNextGuidancePoint(paramDistance, paramUnit);
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateNextGuidancePointName(String nextGuidancePointName) {
                    GlyDimInteractionImpl.this.iNaviInteraction.updateNextGuidancePointName(nextGuidancePointName);
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateTurnByTurnArrow(Bitmap arrowBitmap) {
                    GlyDimInteractionImpl.this.iNaviInteraction.updateTurnByTurnArrow(arrowBitmap);
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void notifyDestinationReached(String message, Bitmap reachedIcon) {
                    GlyDimInteractionImpl.this.iNaviInteraction.notifyDestinationReached(message, reachedIcon);
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateDriveDirection(int direction) {
                    GlyDimInteractionImpl.this.iNaviInteraction.updateDriveDirection(direction);
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateMuteState(int state) {
                    GlyDimInteractionImpl.this.iNaviInteraction.updateMuteState(state);
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateDayNightMode(int mode) {
                    GlyDimInteractionImpl.this.iNaviInteraction.updateDayNightMode(mode);
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateLaneInfo(IGlyLaneInfo[] laneInfo) {
                    if (laneInfo != null) {
                        INaviInteraction.ILaneInfo[] iLaneInfoArr = new INaviInteraction.ILaneInfo[laneInfo.length];
                        for (int i = 0; i < laneInfo.length; i++) {
                            final IGlyLaneInfo iGlyLaneInfo = laneInfo[i];
                            iLaneInfoArr[i] = new INaviInteraction.ILaneInfo() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.10.1
                                public int getLaneNumber() {
                                    return iGlyLaneInfo.getLaneNumber();
                                }

                                public int getLaneBackIconId() {
                                    return iGlyLaneInfo.getLaneBackIconId();
                                }

                                public Bitmap getLaneBackIcon() {
                                    return iGlyLaneInfo.getLaneBackIcon();
                                }
                            };
                        }
                        GlyDimInteractionImpl.this.iNaviInteraction.updateLaneInfo(iLaneInfoArr);
                    }
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateHighwayExitInfo(final IGlyHighwayExitInfo info) {
                    if (info != null) {
                        GlyDimInteractionImpl.this.iNaviInteraction.updateHighwayExitInfo(new INaviInteraction.IHighwayExitInfo() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.10.2
                            public String getExitNumber() {
                                return info.getExitNumber();
                            }

                            public String getExitDirection() {
                                return info.getExitDirection();
                            }

                            public int getEtaDistance() {
                                return info.getEtaDistance();
                            }

                            public int getEtaTime() {
                                return info.getEtaTime();
                            }
                        });
                    }
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateServiceAreaInfo(final IGlyServiceArea serviceArea) {
                    if (serviceArea != null) {
                        GlyDimInteractionImpl.this.iNaviInteraction.updateServiceAreaInfo(new INaviInteraction.IServiceArea() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.10.3
                            public int getAreaType() {
                                return serviceArea.getAreaType();
                            }

                            public String getAreaName() {
                                return serviceArea.getAreaName();
                            }

                            public int getAreaDistance() {
                                return serviceArea.getAreaDistance();
                            }

                            public int getEtaTime() {
                                return serviceArea.getEtaTime();
                            }
                        });
                    }
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateRoadCameraInfo(final IGlyRoadCamera roadCamera) {
                    if (roadCamera != null) {
                        GlyDimInteractionImpl.this.iNaviInteraction.updateRoadCameraInfo(new INaviInteraction.IRoadCamera() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.10.4
                            public int getCameraType() {
                                return roadCamera.getCameraType();
                            }

                            public int getAreaDistance() {
                                return roadCamera.getAreaDistance();
                            }

                            public int getLimitSpeed() {
                                return roadCamera.getLimitSpeed();
                            }
                        });
                    }
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateNaviInfo(IGlyNaviInfo info) {
                    if (info != null) {
                        GlyDimInteractionImpl.this.iNaviInteraction.updateNaviInfo(new NaviInfo(info.getName(), info.gatLatitude(), info.gatLongitude(), (int) info.getRemainDistance(), (int) info.getRemainTime()));
                    }
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateNaviStatus(IGlyNaviStatus status) {
                    if (status != null) {
                        GlyDimInteractionImpl.this.iNaviInteraction.updateNaviStatus(new NaviStatus(status.getStatus(), status.isYawing()));
                    }
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateLastRangeInfo(IGlyLastRangeInfo info) {
                    if (info != null) {
                        GlyDimInteractionImpl.this.iNaviInteraction.updateLastRangeInfo(new LastRangeInfo((int) info.getLongitudeE6(), (int) info.getLatitudeE6(), (int) info.getLongitudeE61(), (int) info.getLatitudeE61(), info.getName(), info.getMsgSubTitle()));
                    }
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateExtensionInfo(Bundle extensionInfo) {
                    GlyDimInteractionImpl.this.iNaviInteraction.updateExtensionInfo(extensionInfo);
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateNavigationInfo(final IGlyNavigationInfo info) {
                    if (info != null) {
                        GlyDimInteractionImpl.this.iNaviInteraction.updateNavigationInfo(new INaviInteraction.INavigationInfo() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.10.5
                            public int getNavigationStatus() {
                                return info.getNavigationStatus();
                            }

                            public int getNavigationTurnId() {
                                return info.getNavigationTurnId();
                            }

                            public String getNavigationTurnSVG() {
                                return info.getNavigationTurnSVG();
                            }

                            public String getNextGuidancePointName() {
                                return info.getNextGuidancePointName();
                            }

                            public long getDistanceToNextGuidancePoint() {
                                return info.getDistanceToNextGuidancePoint();
                            }

                            public long getDistanceToDestination() {
                                return info.getDistanceToDestination();
                            }

                            public long getETA() {
                                return info.getETA();
                            }

                            public int getDrivingDirection() {
                                return info.getDrivingDirection();
                            }

                            public int getMuteState() {
                                return info.getMuteState();
                            }

                            public int getDayNightMode() {
                                return info.getDayNightMode();
                            }

                            public INaviInteraction.ILaneInfo[] getLaneInfo() {
                                IGlyLaneInfo[] laneInfo = info.getLaneInfo();
                                if (laneInfo == null) {
                                    return null;
                                }
                                INaviInteraction.ILaneInfo[] iLaneInfoArr = new INaviInteraction.ILaneInfo[laneInfo.length];
                                for (int i = 0; i < laneInfo.length; i++) {
                                    final IGlyLaneInfo iGlyLaneInfo = laneInfo[i];
                                    iLaneInfoArr[i] = new INaviInteraction.ILaneInfo() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.10.5.1
                                        public int getLaneNumber() {
                                            return iGlyLaneInfo.getLaneNumber();
                                        }

                                        public int getLaneBackIconId() {
                                            return iGlyLaneInfo.getLaneBackIconId();
                                        }

                                        public Bitmap getLaneBackIcon() {
                                            return iGlyLaneInfo.getLaneBackIcon();
                                        }
                                    };
                                }
                                return iLaneInfoArr;
                            }

                            public INaviInteraction.IHighwayExitInfo getHighwayExitInfo() {
                                final IGlyHighwayExitInfo highwayExitInfo = info.getHighwayExitInfo();
                                if (highwayExitInfo == null) {
                                    return null;
                                }
                                return new INaviInteraction.IHighwayExitInfo() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.10.5.2
                                    public String getExitNumber() {
                                        return highwayExitInfo.getExitNumber();
                                    }

                                    public String getExitDirection() {
                                        return highwayExitInfo.getExitDirection();
                                    }

                                    public int getEtaDistance() {
                                        return highwayExitInfo.getEtaDistance();
                                    }

                                    public int getEtaTime() {
                                        return highwayExitInfo.getEtaTime();
                                    }
                                };
                            }

                            public INaviInteraction.IServiceArea getServiceAreaInfo() {
                                final IGlyServiceArea serviceAreaInfo = info.getServiceAreaInfo();
                                if (serviceAreaInfo == null) {
                                    return null;
                                }
                                return new INaviInteraction.IServiceArea() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.10.5.3
                                    public int getAreaType() {
                                        return serviceAreaInfo.getAreaType();
                                    }

                                    public String getAreaName() {
                                        return serviceAreaInfo.getAreaName();
                                    }

                                    public int getAreaDistance() {
                                        return serviceAreaInfo.getAreaDistance();
                                    }

                                    public int getEtaTime() {
                                        return serviceAreaInfo.getEtaTime();
                                    }
                                };
                            }

                            public INaviInteraction.IRoadCamera getRoadCameraInfo() {
                                final IGlyRoadCamera roadCameraInfo = info.getRoadCameraInfo();
                                if (roadCameraInfo == null) {
                                    return null;
                                }
                                return new INaviInteraction.IRoadCamera() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.10.5.4
                                    public int getCameraType() {
                                        return roadCameraInfo.getCameraType();
                                    }

                                    public int getAreaDistance() {
                                        return roadCameraInfo.getAreaDistance();
                                    }

                                    public int getLimitSpeed() {
                                        return roadCameraInfo.getLimitSpeed();
                                    }
                                };
                            }

                            public Bundle getExtensionInfo() {
                                return info.getExtensionInfo();
                            }
                        });
                    }
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateAddresses(int type, List<IGlyAddress> addresses) {
                    if (addresses != null) {
                        ArrayList arrayList = new ArrayList();
                        for (final IGlyAddress iGlyAddress : addresses) {
                            arrayList.add(new INaviInteraction.IAddress() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.10.6
                                public String getAddressName() {
                                    return iGlyAddress.getAddressName();
                                }

                                public double getLongitude() {
                                    return iGlyAddress.getLongitude();
                                }

                                public double getLatitude() {
                                    return iGlyAddress.getLatitude();
                                }

                                public long getDistance() {
                                    return iGlyAddress.getDistance();
                                }

                                public String getCityName() {
                                    return iGlyAddress.getCityName();
                                }

                                public String getFullAddress() {
                                    return iGlyAddress.getFullAddress();
                                }
                            });
                        }
                        GlyDimInteractionImpl.this.iNaviInteraction.updateAddresses(type, arrayList);
                    }
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void updateSearchAddresses(int type, List<IGlyAddress> addresses, String keyword) {
                    if (addresses != null) {
                        ArrayList arrayList = new ArrayList();
                        for (final IGlyAddress iGlyAddress : addresses) {
                            arrayList.add(new INaviInteraction.IAddress() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.10.7
                                public String getAddressName() {
                                    return iGlyAddress.getAddressName();
                                }

                                public double getLongitude() {
                                    return iGlyAddress.getLongitude();
                                }

                                public double getLatitude() {
                                    return iGlyAddress.getLatitude();
                                }

                                public long getDistance() {
                                    return iGlyAddress.getDistance();
                                }

                                public String getCityName() {
                                    return iGlyAddress.getCityName();
                                }

                                public String getFullAddress() {
                                    return iGlyAddress.getFullAddress();
                                }
                            });
                        }
                        GlyDimInteractionImpl.this.iNaviInteraction.updateAddresses(type, arrayList);
                    }
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void registerNavigationInteractionCallback(IGlyNavigationInteractionCallback callback) {
                    if (GlyDimInteractionImpl.this.iNavigationInteractionCallback == null || callback == null) {
                        return;
                    }
                    GlyDimInteractionImpl.this.mNavInteractionCallbacks.add(callback);
                    GlyDimInteractionImpl.this.iNaviInteraction.registerNavigationInteractionCallback(GlyDimInteractionImpl.this.iNavigationInteractionCallback);
                }

                @Override // com.geely.os.diminteraction.IGlyNaviInteraction
                public void unregisterNavigationInteractionCallback(IGlyNavigationInteractionCallback callback) {
                    if (GlyDimInteractionImpl.this.iNavigationInteractionCallback == null || callback == null) {
                        return;
                    }
                    GlyDimInteractionImpl.this.mNavInteractionCallbacks.remove(callback);
                    GlyDimInteractionImpl.this.iNaviInteraction.unregisterNavigationInteractionCallback(GlyDimInteractionImpl.this.iNavigationInteractionCallback);
                }
            };
        }
        return null;
    }

    /* renamed from: com.geely.os.diminteraction.GlyDimInteractionImpl$11, reason: invalid class name */
    class AnonymousClass11 implements IPhoneCallInteraction.IPhoneCallInteractionCallback {
        public void onRejectCall(String s) {
        }

        AnonymousClass11() {
        }

        public void onAnswerCall(final String s) {
            GlyDimInteractionImpl.this.mPhoneInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$11$FlWeyNEZ_upEBaPN6GRyifCDxcg
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyPhoneCallInteractionCallback) obj).onAnswerCall(s);
                }
            });
        }

        public void onAnswerAndHoldCall(final String s) {
            GlyDimInteractionImpl.this.mPhoneInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$11$_8IV70aG7cGIyoiCCCQXBB1S1BI
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyPhoneCallInteractionCallback) obj).onAnswerAndHoldCall(s);
                }
            });
        }

        public void onAnswerAndEndCall(final String s) {
            GlyDimInteractionImpl.this.mPhoneInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$11$f18Dd_T2Fw6WknsVtL7LSAKMTQ8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyPhoneCallInteractionCallback) obj).onAnswerAndEndCall(s);
                }
            });
        }

        public void onEndCall(final String s) {
            GlyDimInteractionImpl.this.mPhoneInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$11$UdKmJO-9b-LiUKDBk3KXb_TI-8U
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyPhoneCallInteractionCallback) obj).onEndCall(s);
                }
            });
        }

        public void onCallInfoUpdateRequired() {
            GlyDimInteractionImpl.this.mPhoneInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$11$D9g7UEjHtgij63vUBy37c7gT_Mo
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyPhoneCallInteractionCallback) obj).onCallInfoUpdateRequired();
                }
            });
        }

        public void onRequestConnectedMobileDeviceInfo() {
            GlyDimInteractionImpl.this.mPhoneInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$11$OB3xMPsXnzRiTSzcu__7fFIjwmY
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyPhoneCallInteractionCallback) obj).onRequestConnectedMobileDeviceInfo();
                }
            });
        }

        public void onSwitchCall() {
            GlyDimInteractionImpl.this.mPhoneInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$11$1D0M-HgLE8lHErzHKj2FWsf8Uug
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyPhoneCallInteractionCallback) obj).onSwitchCall();
                }
            });
        }

        public void onSwitchMicMode(final int i) {
            GlyDimInteractionImpl.this.mPhoneInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$11$aF_AR32ivkGFNCNakp8sJFLNaDI
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyPhoneCallInteractionCallback) obj).onSwitchMicMode(i);
                }
            });
        }

        public void onSwitchChannel(final int i) {
            GlyDimInteractionImpl.this.mPhoneInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$11$DXG2w77JKq_q9fzlQoObfKK0ItU
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyPhoneCallInteractionCallback) obj).onSwitchChannel(i);
                }
            });
        }

        public void placeCall(final String s) {
            GlyDimInteractionImpl.this.mPhoneInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$11$_ACbTz5YmnhhPsTwOU8padZCH7g
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyPhoneCallInteractionCallback) obj).placeCall(s);
                }
            });
        }

        public void onSwitchRingtoneMuteMode(final int i) {
            GlyDimInteractionImpl.this.mPhoneInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$11$upY1-2CHP0wRp9thRpsi7zBGoUc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyPhoneCallInteractionCallback) obj).onSwitchRingtoneMuteMode(i);
                }
            });
        }
    }

    @Override // com.geely.os.diminteraction.IGlyDimInteraction
    public IGlyPhoneCallInteraction getPhoneCallInteraction() {
        if (this.iPhoneCallInteraction != null) {
            return new IGlyPhoneCallInteraction() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.12
                @Override // com.geely.os.diminteraction.IGlyPhoneCallInteraction
                public void registerPhoneCallback(IGlyPhoneCallInteractionCallback callback) {
                    if (GlyDimInteractionImpl.this.iPhoneCallInteractionCallback == null || callback == null) {
                        return;
                    }
                    GlyDimInteractionImpl.this.mPhoneInteractionCallbacks.add(callback);
                    GlyDimInteractionImpl.this.iPhoneCallInteraction.registerPhoneCallback(GlyDimInteractionImpl.this.iPhoneCallInteractionCallback);
                }

                @Override // com.geely.os.diminteraction.IGlyPhoneCallInteraction
                public void unRegisterPhoneCallback(IGlyPhoneCallInteractionCallback callback) {
                    if (GlyDimInteractionImpl.this.iPhoneCallInteractionCallback == null || callback == null) {
                        return;
                    }
                    GlyDimInteractionImpl.this.mPhoneInteractionCallbacks.remove(callback);
                    GlyDimInteractionImpl.this.iPhoneCallInteraction.unRegisterPhoneCallback(GlyDimInteractionImpl.this.iPhoneCallInteractionCallback);
                }

                @Override // com.geely.os.diminteraction.IGlyPhoneCallInteraction
                public void updateCallInfo(final IGlyCallInfo callInfo) {
                    if (callInfo != null) {
                        GlyDimInteractionImpl.this.iPhoneCallInteraction.updateCallInfo(new IPhoneCallInteraction.ICallInfo() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.12.1
                            public Bitmap getAvatar() {
                                return callInfo.getAvatar();
                            }

                            public int getActiveCallId() {
                                return callInfo.getActiveCallId();
                            }

                            public boolean isMicOnVehicleMuted() {
                                return callInfo.isMicOnVehicleMuted();
                            }

                            public boolean isRingtoneMuted() {
                                return callInfo.isRingtoneMuted();
                            }

                            public boolean isHandFree() {
                                return callInfo.isHandFree();
                            }

                            public int getCallId() {
                                return callInfo.getCallId();
                            }

                            public String getContactName() {
                                return callInfo.getContactName();
                            }

                            public String getContactNumber() {
                                return callInfo.getContactNumber();
                            }

                            public int getCallStatus() {
                                return callInfo.getCallStatus();
                            }

                            public long getCallDuration() {
                                return callInfo.getCallDuration();
                            }

                            public int getCallCount() {
                                return callInfo.getCallCount();
                            }

                            public String getCompany() {
                                return callInfo.getCompany();
                            }

                            public String getTitle() {
                                return callInfo.getTitle();
                            }
                        });
                    }
                }

                @Override // com.geely.os.diminteraction.IGlyPhoneCallInteraction
                public void updateConnectedMobileDeviceState(String deviceName, int batteryLevel, int signalLevel) {
                    GlyDimInteractionImpl.this.iPhoneCallInteraction.updateConnectedMobileDeviceState(deviceName, batteryLevel, signalLevel);
                }

                @Override // com.geely.os.diminteraction.IGlyPhoneCallInteraction
                public void updateSecondCallInfo(final IGlyCallInfo callInfo) {
                    if (callInfo != null) {
                        GlyDimInteractionImpl.this.iPhoneCallInteraction.updateSecondCallInfo(new IPhoneCallInteraction.ICallInfo() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.12.2
                            public Bitmap getAvatar() {
                                return callInfo.getAvatar();
                            }

                            public int getActiveCallId() {
                                return callInfo.getActiveCallId();
                            }

                            public boolean isMicOnVehicleMuted() {
                                return callInfo.isMicOnVehicleMuted();
                            }

                            public boolean isRingtoneMuted() {
                                return callInfo.isRingtoneMuted();
                            }

                            public boolean isHandFree() {
                                return callInfo.isHandFree();
                            }

                            public int getCallId() {
                                return callInfo.getCallId();
                            }

                            public String getContactName() {
                                return callInfo.getContactName();
                            }

                            public String getContactNumber() {
                                return callInfo.getContactNumber();
                            }

                            public int getCallStatus() {
                                return callInfo.getCallStatus();
                            }

                            public long getCallDuration() {
                                return callInfo.getCallDuration();
                            }

                            public int getCallCount() {
                                return callInfo.getCallCount();
                            }

                            public String getCompany() {
                                return callInfo.getCompany();
                            }

                            public String getTitle() {
                                return callInfo.getTitle();
                            }
                        });
                    }
                }

                @Override // com.geely.os.diminteraction.IGlyPhoneCallInteraction
                public void writeCallLog2DBCompleted() {
                    GlyDimInteractionImpl.this.iPhoneCallInteraction.writeCallLog2DBCompleted();
                }

                @Override // com.geely.os.diminteraction.IGlyPhoneCallInteraction
                public void writeContact2DBCompleted() {
                    GlyDimInteractionImpl.this.iPhoneCallInteraction.writeContact2DBCompleted();
                }
            };
        }
        return null;
    }

    @Override // com.geely.os.diminteraction.IGlyDimInteraction
    public int getShowPresentationOption() {
        DimInteraction dimInteraction = this.mDimInteraction;
        if (dimInteraction == null) {
            return -1;
        }
        return dimInteraction.getShowPresentationOption();
    }

    @Override // com.geely.os.diminteraction.IGlyDimInteraction
    public int getSupportedRankingType() {
        DimInteraction dimInteraction = this.mDimInteraction;
        if (dimInteraction == null) {
            return -1;
        }
        return dimInteraction.getSupportedRankingType();
    }

    /* renamed from: com.geely.os.diminteraction.GlyDimInteractionImpl$13, reason: invalid class name */
    class AnonymousClass13 implements IVendorInteraction.IVendorInteractionCallback {
        AnonymousClass13() {
        }

        public void onInteractionAction(final int i, final IVendorInteraction.IVendorInformation iVendorInformation) {
            if (iVendorInformation == null) {
                return;
            }
            final IGlyVendorInformation iGlyVendorInformation = new IGlyVendorInformation() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.13.1
                @Override // com.geely.os.diminteraction.IGlyVendorInformation
                public int getType() {
                    return iVendorInformation.getType();
                }

                @Override // com.geely.os.diminteraction.IGlyVendorInformation
                public Bundle getVendorExtras() {
                    return iVendorInformation.getVendorExtras();
                }
            };
            GlyDimInteractionImpl.this.mVendorInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$13$SSCBgRnABMj9CusN6dT4nyoHoh8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyVendorInteractionCallback) obj).onInteractionAction(i, iGlyVendorInformation);
                }
            });
        }
    }

    @Override // com.geely.os.diminteraction.IGlyDimInteraction
    public IGlyVendorInteraction getVendorInteraction() {
        if (this.iVendorInteraction != null) {
            return new IGlyVendorInteraction() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.14
                @Override // com.geely.os.diminteraction.IGlyVendorInteraction
                public boolean registerVendorInteractionCallback(IGlyVendorInteractionCallback callback) {
                    if (GlyDimInteractionImpl.this.iVendorInteractionCallback == null || callback == null) {
                        return false;
                    }
                    GlyDimInteractionImpl.this.mVendorInteractionCallbacks.add(callback);
                    return GlyDimInteractionImpl.this.iVendorInteraction.registerVendorInteractionCallback(GlyDimInteractionImpl.this.iVendorInteractionCallback);
                }

                @Override // com.geely.os.diminteraction.IGlyVendorInteraction
                public boolean unRegisterVendorInteractionCallback(IGlyVendorInteractionCallback callback) {
                    if (GlyDimInteractionImpl.this.iVendorInteractionCallback == null || callback == null) {
                        return false;
                    }
                    GlyDimInteractionImpl.this.mVendorInteractionCallbacks.remove(callback);
                    return GlyDimInteractionImpl.this.iVendorInteraction.registerVendorInteractionCallback(GlyDimInteractionImpl.this.iVendorInteractionCallback);
                }

                @Override // com.geely.os.diminteraction.IGlyVendorInteraction
                public boolean updateVendorInformation(final IGlyVendorInformation information) {
                    if (information == null) {
                        return false;
                    }
                    return GlyDimInteractionImpl.this.iVendorInteraction.updateVendorInformation(new IVendorInteraction.IVendorInformation() { // from class: com.geely.os.diminteraction.GlyDimInteractionImpl.14.1
                        public int getType() {
                            return information.getType();
                        }

                        public Bundle getVendorExtras() {
                            return information.getVendorExtras();
                        }
                    });
                }
            };
        }
        return null;
    }

    /* renamed from: com.geely.os.diminteraction.GlyDimInteractionImpl$15, reason: invalid class name */
    class AnonymousClass15 implements DimInteraction.IInteractionCallback {
        AnonymousClass15() {
        }

        public void onShowPresentationOptionChanged(final int i) {
            GlyDimInteractionImpl.this.mMainInteractionCallbacks.forEach(new Consumer() { // from class: com.geely.os.diminteraction.-$$Lambda$GlyDimInteractionImpl$15$BpiS6joNRgiHn7XRrjVdEQALy0c
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyInteractionCallback) obj).onShowPresentationOptionChanged(i);
                }
            });
        }
    }

    @Override // com.geely.os.diminteraction.IGlyDimInteraction
    public void registerInteractionCallback(IGlyInteractionCallback callback) {
        if (this.iInteractionCallback == null || callback == null) {
            return;
        }
        this.mMainInteractionCallbacks.add(callback);
        this.mDimInteraction.registerInteractionCallback(this.iInteractionCallback);
    }

    @Override // com.geely.os.diminteraction.IGlyDimInteraction
    public void unregisterInteractionCallback(IGlyInteractionCallback callback) {
        if (this.iInteractionCallback == null || callback == null) {
            return;
        }
        this.mMainInteractionCallbacks.remove(callback);
        this.mDimInteraction.unregisterInteractionCallback(this.iInteractionCallback);
    }

    @Override // com.geely.os.diminteraction.IGlyDimInteraction
    public void setPresentationToDimSwitch(int app, String pkg, String cls, boolean on) {
        DimInteraction dimInteraction = this.mDimInteraction;
        if (dimInteraction != null) {
            dimInteraction.setPresentationToDimSwitch(app, pkg, cls, on);
        }
    }

    @Override // com.geely.os.diminteraction.IGlyDimInteraction
    public void updateAvgFuleRanking(int type, String rankingInfo) {
        DimInteraction dimInteraction = this.mDimInteraction;
        if (dimInteraction != null) {
            dimInteraction.updateAvgFuleRanking(type, rankingInfo);
        }
    }
}
