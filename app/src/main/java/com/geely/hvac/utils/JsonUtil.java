package com.geely.hvac.utils;

import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class JsonUtil {
    public static JSONObject merge(JSONObject target, JSONObject source) throws JSONException {
        if (source != null && target != null) {
            try {
                Iterator<String> itKeys = source.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    Object objOpt = source.opt(next);
                    if (!target.has(next)) {
                        target.put(next, objOpt);
                    } else {
                        Object objOpt2 = target.opt(next);
                        if (objOpt instanceof JSONObject) {
                            if (objOpt2 instanceof JSONObject) {
                                target.put(next, merge((JSONObject) objOpt2, (JSONObject) objOpt));
                            } else {
                                target.put(next, objOpt);
                            }
                        } else if (objOpt instanceof JSONArray) {
                            JSONArray jSONArray = (JSONArray) objOpt;
                            if (objOpt2 instanceof JSONArray) {
                                JSONArray jSONArray2 = (JSONArray) objOpt2;
                                int length = jSONArray.length();
                                for (int i = 0; i < length; i++) {
                                    jSONArray2.put(i, merge((JSONObject) jSONArray2.get(i), (JSONObject) jSONArray.get(i)));
                                }
                            } else {
                                target.put(next, objOpt);
                            }
                        } else {
                            target.put(next, objOpt);
                        }
                    }
                }
                return target;
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return source;
    }
}
