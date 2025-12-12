package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;

/* loaded from: classes.dex */
public class RspCurrPageHotWord extends NaviBaseModel implements Parcelable {
    public static final Creator<RspCurrPageHotWord> CREATOR = new Creator<RspCurrPageHotWord>() { // from class: com.geely.lib.oneosapi.navi.model.service.RspCurrPageHotWord.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspCurrPageHotWord createFromParcel(Parcel source) {
            return new RspCurrPageHotWord(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspCurrPageHotWord[] newArray(int size) {
            return new RspCurrPageHotWord[size];
        }
    };
    private String hotWord;

    public RspCurrPageHotWord() {
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getHotWord() {
        return this.hotWord;
    }

    public void setHotWord(String hotWord) {
        this.hotWord = hotWord;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("RspCurrPageHotWord{");
        sb.append("hotWord=").append(this.hotWord);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeString(this.hotWord);
    }

    public RspCurrPageHotWord(Parcel parcel) {
        super(parcel);
        this.hotWord = parcel.readString();
    }
}
