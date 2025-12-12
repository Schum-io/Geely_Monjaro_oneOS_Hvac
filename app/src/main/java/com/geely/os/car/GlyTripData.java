package com.geely.os.car;

import android.util.ArraySet;
import android.util.Log;
import com.ecarx.xui.adaptapi.car.hev.ITripData;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class GlyTripData {
    private ITripData mITripData;
    private ArraySet<IGlyTPTFReportListener> mTptfReportListeners;
    private ITripData.ITPTFReportListener reportListener = new AnonymousClass1();

    public GlyTripData(ITripData tripData, ArraySet<IGlyTPTFReportListener> tptfReportListeners) {
        this.mITripData = tripData;
        this.mTptfReportListeners = tptfReportListeners;
    }

    /* renamed from: com.geely.os.car.GlyTripData$1, reason: invalid class name */
    class AnonymousClass1 implements ITripData.ITPTFReportListener {
        AnonymousClass1() {
        }

        public void onReportUpdate(final ITripData.ITPTFReport itptfReport) {
            GlyLog.i("OneVehicleSDK_GlyHevImpl", "onReportUpdate itptfReport=" + itptfReport);
            if (itptfReport != null) {
                final IGlyTPTFReport iGlyTPTFReport = new IGlyTPTFReport() { // from class: com.geely.os.car.GlyTripData.1.1
                    @Override // com.geely.os.car.IGlyTPTFReport
                    public int getLastedUpdateItemFlag() {
                        return itptfReport.getLastedUpdateItemFlag();
                    }

                    @Override // com.geely.os.car.IGlyTPTFReport
                    public int[] getTPTFReportDataScene1() {
                        return itptfReport.getTPTFReportDataScene1();
                    }

                    @Override // com.geely.os.car.IGlyTPTFReport
                    public int[] getTPTFReportDataScene2() {
                        return itptfReport.getTPTFReportDataScene2();
                    }

                    @Override // com.geely.os.car.IGlyTPTFReport
                    public int[] getTPTFReportDataScene3() {
                        return itptfReport.getTPTFReportDataScene3();
                    }

                    @Override // com.geely.os.car.IGlyTPTFReport
                    public int[] getTPTFReportDataScene4() {
                        return itptfReport.getTPTFReportDataScene4();
                    }
                };
                if (GlyTripData.this.mTptfReportListeners == null || GlyTripData.this.mTptfReportListeners.size() <= 0) {
                    return;
                }
                GlyTripData.this.mTptfReportListeners.forEach(new Consumer() { // from class: com.geely.os.car.-$$Lambda$GlyTripData$1$QDGv4TCn7NqHMZt1_LnCYfRsmMc
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyTPTFReportListener) obj).onReportUpdate(iGlyTPTFReport);
                    }
                });
            }
        }
    }

    public void registerTPTFReportListener() {
        Log.i("OneVehicleSDK_GlyTripData", "registerTPTFReportListener");
        this.mITripData.registerTPTFReportListener(this.reportListener);
    }

    public void unregisterTPTFReportListener() {
        Log.i("OneVehicleSDK_GlyTripData", "unregisterTPTFReportListener");
        ITripData iTripData = this.mITripData;
        if (iTripData != null) {
            iTripData.unregisterTPTFReportListener(this.reportListener);
        }
    }
}
