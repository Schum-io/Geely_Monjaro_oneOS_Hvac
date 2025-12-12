package com.geely.lib.oneosapi.navi.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;

/* loaded from: classes.dex */
public class SwitchMapPresentation extends NaviBaseModel implements Parcelable {
    public static final Creator<SwitchMapPresentation> CREATOR = new Creator<SwitchMapPresentation>() { // from class: com.geely.lib.oneosapi.navi.model.client.SwitchMapPresentation.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SwitchMapPresentation createFromParcel(Parcel in) {
            return new SwitchMapPresentation(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SwitchMapPresentation[] newArray(int size) {
            return new SwitchMapPresentation[size];
        }
    };
    private int operateType;
    private int screenMode;
    private int screenWindow;

    public SwitchMapPresentation() {
        setProtocolID(NaviProtocolID.NAVI_OP_SWITCH_MAP_PRESENTATION);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getOperateType() {
        return this.operateType;
    }

    public int getScreenMode() {
        return this.screenMode;
    }

    public int getScreenWindow() {
        return this.screenWindow;
    }

    public void setOperateType(int operateType) {
        this.operateType = operateType;
    }

    public void setScreenMode(int screenMode) {
        this.screenMode = screenMode;
    }

    public void setScreenWindow(int screenWindow) {
        this.screenWindow = screenWindow;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        super.toString();
        return "SwitchMapPresentation{operateType=" + this.operateType + ", screenMode=" + this.screenMode + ", screenWindow=" + this.screenWindow + '}';
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.operateType);
        dest.writeInt(this.screenMode);
        dest.writeInt(this.screenWindow);
    }

    public SwitchMapPresentation(NaviBaseModel reqModel) {
        copyBaseInfo(reqModel);
        setProtocolID(NaviProtocolID.NAVI_OP_SWITCH_MAP_PRESENTATION);
    }

    public SwitchMapPresentation(Parcel in) {
        super(in);
        this.operateType = in.readInt();
        this.screenMode = in.readInt();
        this.screenWindow = in.readInt();
    }
}
