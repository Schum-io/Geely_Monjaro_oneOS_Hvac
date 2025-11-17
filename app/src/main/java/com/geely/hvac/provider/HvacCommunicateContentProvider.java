package com.geely.hvac.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Intent;
import android.content.UriMatcher;
import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import android.net.Uri;
import com.geely.hvac.BuildConfig;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.activity.GlyMainActivity;
import com.geely.hvac.utils.LogUtil;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class HvacCommunicateContentProvider extends ContentProvider {
    public static final int INTERFACE_VISIBILITY_NO = 1;
    public static final int INTERFACE_VISIBILITY_YES = 0;
    private static final String TAG = "HvacCommunicateContentProvider";
    public static final String TYPE_CLOSE = "close";
    public static final String TYPE_GET_VISIBILITY = "getVisibility";
    public static final String TYPE_OPEN = "open";
    private static HvacCommunicateData mStickHvacCommunicateData;
    private static AcVisibilityListener sAcVisibilityListener;
    private static WeakReference<HvacCommunicateListener> sHvacCommunicateListenerWeakReference;
    private final List<String> mCommunicatTypes;
    private final UriMatcher mUriMatcher;
    private final String AUTHORITIES_PATH = BuildConfig.APPLICATION_ID;
    private final String PATH_QUERY = "hvac/query";
    private final int CODE_QUERY = 3;

    public interface HvacCommunicateListener {
        void onClose(String extra);

        boolean onGetHvacVisibility();

        void onOpen(String extra);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues values) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        return 0;
    }

    public static class GetHvacVisibilityCursor extends AbstractWindowedCursor {
        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getCount() {
            return 1;
        }

        public GetHvacVisibilityCursor(CursorWindow window) {
            setWindow(window);
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String[] getColumnNames() {
            return new String[]{DbParams.KEY_CHANNEL_RESULT};
        }
    }

    public HvacCommunicateContentProvider() {
        ArrayList arrayList = new ArrayList();
        this.mCommunicatTypes = arrayList;
        UriMatcher uriMatcher = new UriMatcher(-1);
        this.mUriMatcher = uriMatcher;
        uriMatcher.addURI(BuildConfig.APPLICATION_ID, "hvac/query", 3);
        arrayList.add(TYPE_OPEN);
        arrayList.add(TYPE_CLOSE);
        arrayList.add(TYPE_GET_VISIBILITY);
    }

    public static void setHvacCommunicateListener(HvacCommunicateListener listener) {
        LogUtil.d(TAG, "setHvacCommunicateListener:" + listener);
        setHvacCommunicateListener(listener, false);
    }

    public static void setAcVisibilityListener(AcVisibilityListener listener) {
        sAcVisibilityListener = listener;
    }

    public static void reSetAcVisibilityListener(AcVisibilityListener listener) {
        sAcVisibilityListener = null;
    }

    public static void setHvacCommunicateListener(HvacCommunicateListener listener, boolean useStickData) {
        HvacCommunicateData hvacCommunicateData;
        LogUtil.d(TAG, "setHvacCommunicateListener, listener:" + listener + ", useStickData:" + useStickData + ", mStickHvacCommunicateData:" + mStickHvacCommunicateData);
        sHvacCommunicateListenerWeakReference = new WeakReference<>(listener);
        if (!useStickData || (hvacCommunicateData = mStickHvacCommunicateData) == null || TYPE_OPEN.equals(hvacCommunicateData.getType())) {
            return;
        }
        TYPE_CLOSE.equals(mStickHvacCommunicateData.getType());
    }

    private Cursor onGetVisibility(HvacCommunicateListener listener) {
        long j = 1;
        if (listener != null && listener.onGetHvacVisibility()) {
            j = 0;
        }
        CursorWindow cursorWindow = new CursorWindow((String) null);
        cursorWindow.setNumColumns(1);
        cursorWindow.allocRow();
        cursorWindow.putLong(j, 0, 0);
        return new GetHvacVisibilityCursor(cursorWindow);
    }

    private static Cursor onSetVisibility(String type, String extra, HvacCommunicateListener listener) {
        if (listener == null) {
            mStickHvacCommunicateData = new HvacCommunicateData(type, extra);
        }
        if (TYPE_OPEN.equals(type)) {
            LogUtil.d(TAG, "show");
            Intent intent = new Intent(GlyAcApp.getInstance(), (Class<?>) GlyMainActivity.class);
            intent.addFlags(268435456);
            GlyAcApp.getInstance().startActivity(intent);
            return null;
        }
        if (!TYPE_CLOSE.equals(type)) {
            return null;
        }
        AcVisibilityListener acVisibilityListener = sAcVisibilityListener;
        if (acVisibilityListener != null) {
            acVisibilityListener.onInVisible(extra);
        }
        if (listener == null) {
            return null;
        }
        listener.onClose(extra);
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0075  */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Cursor query(Uri r6, String[] r7, String r8, String[] r9, String r10) {
        /*
            r5 = this;
            java.lang.String r8 = com.geely.hvac.provider.HvacCommunicateContentProvider.TAG
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r10 = "query, uri:"
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.StringBuilder r9 = r9.append(r6)
            java.lang.String r9 = r9.toString()
            com.geely.hvac.utils.LogUtil.d(r8, r9)
            r9 = 0
            if (r7 == 0) goto Laa
            int r10 = r7.length
            if (r10 != 0) goto L20
            goto Laa
        L20:
            int r8 = r7.length
            r10 = 0
            r0 = r10
        L23:
            if (r0 >= r8) goto L42
            r1 = r7[r0]
            java.lang.String r2 = com.geely.hvac.provider.HvacCommunicateContentProvider.TAG
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "query, projection:"
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.StringBuilder r1 = r3.append(r1)
            java.lang.String r1 = r1.toString()
            com.geely.hvac.utils.LogUtil.d(r2, r1)
            int r0 = r0 + 1
            goto L23
        L42:
            android.content.UriMatcher r8 = r5.mUriMatcher
            int r6 = r8.match(r6)
            r8 = 3
            if (r6 != r8) goto La9
            r6 = r7[r10]
            int r8 = r7.length
            r0 = 1
            if (r8 <= r0) goto L54
            r7 = r7[r0]
            goto L55
        L54:
            r7 = r9
        L55:
            java.util.List<java.lang.String> r8 = r5.mCommunicatTypes
            boolean r8 = r8.contains(r6)
            if (r8 != 0) goto L5e
            return r9
        L5e:
            java.lang.ref.WeakReference<com.geely.hvac.provider.HvacCommunicateContentProvider$HvacCommunicateListener> r8 = com.geely.hvac.provider.HvacCommunicateContentProvider.sHvacCommunicateListenerWeakReference
            if (r8 == 0) goto L69
            java.lang.Object r8 = r8.get()
            com.geely.hvac.provider.HvacCommunicateContentProvider$HvacCommunicateListener r8 = (com.geely.hvac.provider.HvacCommunicateContentProvider.HvacCommunicateListener) r8
            goto L6a
        L69:
            r8 = r9
        L6a:
            r6.hashCode()
            r1 = -1
            int r2 = r6.hashCode()
            switch(r2) {
                case 3417674: goto L8d;
                case 94756344: goto L82;
                case 1643584264: goto L77;
                default: goto L75;
            }
        L75:
            r10 = r1
            goto L96
        L77:
            java.lang.String r10 = "getVisibility"
            boolean r10 = r6.equals(r10)
            if (r10 != 0) goto L80
            goto L75
        L80:
            r10 = 2
            goto L96
        L82:
            java.lang.String r10 = "close"
            boolean r10 = r6.equals(r10)
            if (r10 != 0) goto L8b
            goto L75
        L8b:
            r10 = r0
            goto L96
        L8d:
            java.lang.String r0 = "open"
            boolean r0 = r6.equals(r0)
            if (r0 != 0) goto L96
            goto L75
        L96:
            switch(r10) {
                case 0: goto La4;
                case 1: goto L9f;
                case 2: goto L9a;
                default: goto L99;
            }
        L99:
            goto La9
        L9a:
            android.database.Cursor r6 = r5.onGetVisibility(r8)
            return r6
        L9f:
            android.database.Cursor r6 = onSetVisibility(r6, r7, r8)
            return r6
        La4:
            android.database.Cursor r6 = onSetVisibility(r6, r7, r8)
            return r6
        La9:
            return r9
        Laa:
            java.lang.String r6 = "query, projection is null or empty"
            com.geely.hvac.utils.LogUtil.d(r8, r6)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.geely.hvac.provider.HvacCommunicateContentProvider.query(android.net.Uri, java.lang.String[], java.lang.String, java.lang.String[], java.lang.String):android.database.Cursor");
    }
}
