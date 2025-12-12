package com.geely.hvac.utils;

import android.graphics.Bitmap;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import com.geely.lib.oneosapi.user.bean.LoginType;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.sensorsdata.analytics.android.sdk.util.Base64Coder;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class QrCodeUtil {
    public static Bitmap createQRCodeBitmap(String content, int width, int height) {
        return createQRCodeBitmap(content, width, height, Base64Coder.CHARSET_UTF8, "H", LoginType.PASSWORD, ViewCompat.MEASURED_STATE_MASK, -1);
    }

    public static Bitmap createQRCodeBitmap(String content, int width, int height, String character_set, String error_correction, String margin, int color_black, int color_white) {
        if (!TextUtils.isEmpty(content) && width >= 0 && height >= 0) {
            try {
                Hashtable hashtable = new Hashtable();
                if (!TextUtils.isEmpty(character_set)) {
                    hashtable.put(EncodeHintType.CHARACTER_SET, character_set);
                }
                if (!TextUtils.isEmpty(error_correction)) {
                    hashtable.put(EncodeHintType.ERROR_CORRECTION, error_correction);
                }
                if (!TextUtils.isEmpty(margin)) {
                    hashtable.put(EncodeHintType.MARGIN, margin);
                }
                BitMatrix bitMatrixEncode = new QRCodeWriter().encode(content, BarcodeFormat.QR_CODE, width, height, hashtable);
                int[] iArr = new int[width * height];
                for (int i = 0; i < height; i++) {
                    for (int i2 = 0; i2 < width; i2++) {
                        if (bitMatrixEncode.get(i2, i)) {
                            iArr[(i * width) + i2] = color_black;
                        } else {
                            iArr[(i * width) + i2] = color_white;
                        }
                    }
                }
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                bitmapCreateBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
                return bitmapCreateBitmap;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
