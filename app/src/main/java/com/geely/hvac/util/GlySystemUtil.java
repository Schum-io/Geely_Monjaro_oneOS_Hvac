package com.geely.hvac.util;

import android.content.ComponentName;
import android.content.res.Configuration;
import android.graphics.Rect;

/* loaded from: classes.dex */
public class GlySystemUtil {

    public static class StackInfo {
        public Rect bounds;
        public final Configuration configuration = new Configuration();
        public int displayId;
        public int position;
        public int stackId;
        public int[] taskIds;
        public String[] taskNames;
        public int[] taskUserIds;
        public ComponentName topActivity;
        public int userId;
        public boolean visible;

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Stack id=");
            stringBuffer.append(this.stackId);
            stringBuffer.append(" displayId=");
            stringBuffer.append(this.displayId);
            stringBuffer.append(" visible=").append(this.visible);
            stringBuffer.append(" position=").append(this.position);
            for (int i = 0; i < this.taskNames.length; i++) {
                stringBuffer.append(" taskName[").append(i).append("]:");
                stringBuffer.append(this.taskNames[i]);
                if (this.topActivity != null) {
                    stringBuffer.append(" topActivity=").append(this.topActivity);
                }
            }
            stringBuffer.append("\n");
            return stringBuffer.toString();
        }
    }
}
