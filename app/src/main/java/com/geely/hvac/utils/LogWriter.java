package com.geely.hvac.utils;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class LogWriter {
    private static final String TAG = "LogWriter";
    public static boolean mIsDebug;
    private static File mLogFile;
    private static final LogUtilInterceptor INTERCEPTOR = new LogUtilInterceptor() { // from class: com.geely.hvac.utils.LogWriter.1
        @Override // com.geely.hvac.utils.LogUtilInterceptor
        public void onLog(String type, String tag, String msg) {
            if (LogWriter.mIsDebug) {
                try {
                    LogWriter.saveLog(type, tag, msg);
                } catch (Throwable e) {
                    e.printStackTrace();
                }
            }
        }
    };
    private static final SimpleDateFormat mLogDataFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");

    /* JADX INFO: Access modifiers changed from: private */
    public static void saveLog(String type, String tag, String msg) throws Throwable {
        File file = mLogFile;
        if (file == null || !file.exists()) {
            Log.d(TAG, "log file is null, or file is not exist. file:" + mLogFile);
            return;
        }
        String str = type + "-" + mLogDataFormat.format(new Date()) + "-" + tag + "-" + msg + "\n";
        if (mLogFile.length() > 100000000) {
            Log.d(TAG, "log file too big");
            String str2 = new SimpleDateFormat("HH_mm_ss_SSS").format(new Date());
            Log.d(TAG, mLogFile.getName());
            String str3 = mLogFile.getName().split("\\.")[0] + "_" + str2 + ".txt";
            File file2 = new File(mLogFile.getParentFile(), str3);
            Log.d(TAG, "copy file name:" + str3);
            if (file2.exists()) {
                file2.delete();
            }
            FileUtil.copyFile(mLogFile, file2);
            FileUtil.writeText(mLogFile, "");
        }
        FileUtil.appendText(mLogFile, str);
    }

    public static LogUtilInterceptor getInterceptor() {
        return INTERCEPTOR;
    }

    public static void init(Context context, boolean isDebug) throws IOException {
        mIsDebug = isDebug;
        if (!isDebug) {
            Log.d(TAG, "not debug, return");
            return;
        }
        if (context == null) {
            return;
        }
        File file = new File(context.getFilesDir().getAbsoluteFile(), "log/" + (new SimpleDateFormat("yyyyMMdd").format(new Date()) + ".txt"));
        mLogFile = file;
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        if (mLogFile.exists()) {
            return;
        }
        try {
            mLogFile.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
            mLogFile = null;
        }
    }
}
