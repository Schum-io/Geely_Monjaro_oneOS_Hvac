package com.geely.lib.cloud.appstore.bean.response;

import com.geely.lib.cloud.appstore.bean.Category;
import java.util.List;

/* loaded from: classes.dex */
public class GetAppCategoryResponse {
    private Data data;
    private String message;
    private String status;

    private class Data {
        private List<Category> categoryList;

        private Data() {
        }

        public List<Category> getCategoryList() {
            return this.categoryList;
        }

        public void setCategoryList(List<Category> categoryList) {
            this.categoryList = categoryList;
        }
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Data getData() {
        return this.data;
    }

    public void setData(Data data) {
        this.data = data;
    }
}
