package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ProfileParam implements Parcelable {
    public static final Creator<ProfileParam> CREATOR = new Creator<ProfileParam>() { // from class: com.geely.lib.cloud.usercenter.bean.ProfileParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProfileParam createFromParcel(Parcel in) {
            return new ProfileParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProfileParam[] newArray(int size) {
            return new ProfileParam[size];
        }
    };
    private String model;
    private String profile;
    private String profileId;
    private String profileName;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ProfileParam() {
    }

    public ProfileParam(String profile, String profileId, String profileName, String model) {
        this.profile = profile;
        this.profileId = profileId;
        this.profileName = profileName;
        this.model = model;
    }

    protected ProfileParam(Parcel in) {
        this.profile = in.readString();
        this.profileId = in.readString();
        this.profileName = in.readString();
        this.model = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.profile);
        dest.writeString(this.profileId);
        dest.writeString(this.profileName);
        dest.writeString(this.model);
    }

    public String getProfile() {
        return this.profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public String getProfileId() {
        return this.profileId;
    }

    public void setProfileId(String profileId) {
        this.profileId = profileId;
    }

    public String getProfileName() {
        return this.profileName;
    }

    public void setProfileName(String profileName) {
        this.profileName = profileName;
    }

    public String getModel() {
        return this.model;
    }

    public void setModel(String model) {
        this.model = model;
    }
}
