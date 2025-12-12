package com.geely.lib.cloud.download.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* loaded from: classes.dex */
public class TaskEntity implements Serializable, Parcelable {
    public static final Creator<TaskEntity> CREATOR = new Creator<TaskEntity>() { // from class: com.geely.lib.cloud.download.bean.TaskEntity.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TaskEntity createFromParcel(Parcel in) {
            return new TaskEntity(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TaskEntity[] newArray(int size) {
            return new TaskEntity[size];
        }
    };
    private String downLoadPath;
    private float downLoadProgress;
    private String downLoadUrl;
    private String downloadId;
    private String downloadName;
    private int errorCode;
    private float installProgress;
    private int taskStatus;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public TaskEntity() {
    }

    protected TaskEntity(Parcel in) {
        this.downloadName = in.readString();
        this.downLoadUrl = in.readString();
        this.downLoadPath = in.readString();
        this.downloadId = in.readString();
        this.taskStatus = in.readInt();
        this.downLoadProgress = in.readFloat();
        this.installProgress = in.readFloat();
        this.errorCode = in.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.downloadName);
        dest.writeString(this.downLoadUrl);
        dest.writeString(this.downLoadPath);
        dest.writeString(this.downloadId);
        dest.writeInt(this.taskStatus);
        dest.writeFloat(this.downLoadProgress);
        dest.writeFloat(this.installProgress);
        dest.writeInt(this.errorCode);
    }

    public String getDownloadName() {
        return this.downloadName;
    }

    public void setDownloadName(String downloadName) {
        this.downloadName = downloadName;
    }

    public String getDownLoadUrl() {
        return this.downLoadUrl;
    }

    public void setDownLoadUrl(String downLoadUrl) {
        this.downLoadUrl = downLoadUrl;
    }

    public String getDownLoadPath() {
        return this.downLoadPath;
    }

    public void setDownLoadPath(String downLoadPath) {
        this.downLoadPath = downLoadPath;
    }

    public String getDownloadId() {
        return this.downloadId;
    }

    public void setDownloadId(String downloadId) {
        this.downloadId = downloadId;
    }

    public int getTaskStatus() {
        return this.taskStatus;
    }

    public void setTaskStatus(int taskStatus) {
        this.taskStatus = taskStatus;
    }

    public float getDownLoadProgress() {
        return this.downLoadProgress;
    }

    public void setDownLoadProgress(float downLoadProgress) {
        this.downLoadProgress = downLoadProgress;
    }

    public float getInstallProgress() {
        return this.installProgress;
    }

    public void setInstallProgress(float installProgress) {
        this.installProgress = installProgress;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public void setErrorCode(int errorCode) {
        this.errorCode = errorCode;
    }

    public String toString() {
        return "TaskEntity{, downloadName='" + this.downloadName + "', downLoadUrl='" + this.downLoadUrl + "', downLoadPath='" + this.downLoadPath + "', downloadId='" + this.downloadId + "', taskStatus=" + this.taskStatus + ", downLoadProgress=" + this.downLoadProgress + ", installProgress=" + this.installProgress + ", errorCode=" + this.errorCode + '}';
    }
}
