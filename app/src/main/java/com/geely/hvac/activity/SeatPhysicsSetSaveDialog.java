package com.geely.hvac.activity;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.geely.hvac.databinding.LayoutSeatPhysicsSaveBinding;
import com.geely.os.car.GlyCarPropertyIds;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

public class SeatPhysicsSetSaveDialog extends BaseAutoHideDialog {
    private LayoutSeatPhysicsSaveBinding binding;
    private Context mContext;
    private View.OnClickListener mSaveClickListener;
    private int mZone;

    public SeatPhysicsSetSaveDialog(Context context, int zone) {
        super(context);
        this.mZone = 1;
        this.mSaveClickListener = new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                dismiss();
                getMainViewModel().saveSeatPosition(SeatPhysicsSetSaveDialog.this.mZone, SeatPhysicsSetSaveDialog.this.mContext);
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            }
        };
        this.mZone = zone;
        this.mContext = context;
    }

    @Override // com.geely.hvac.dialog.BaseDialog
    protected View getView() {
        LayoutSeatPhysicsSaveBinding layoutSeatPhysicsSaveBindingInflate = LayoutSeatPhysicsSaveBinding.inflate(getLayoutInflater());
        this.binding = layoutSeatPhysicsSaveBindingInflate;
        layoutSeatPhysicsSaveBindingInflate.setModel(getMainViewModel());
        this.binding.close1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                dismiss();
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            }
        });
        this.binding.close2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                dismiss();
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            }
        });
        this.binding.save.setOnClickListener(this.mSaveClickListener);
        this.binding.reset.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                dismiss();
                getMainViewModel().setSeatPosition(SeatPhysicsSetSaveDialog.this.mZone);
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            }
        });
        this.binding.saveRight.setOnClickListener(this.mSaveClickListener);
        this.binding.resetRight.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                dismiss();
                getMainViewModel().setSeatPosition(SeatPhysicsSetSaveDialog.this.mZone);
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            }
        });
        this.binding.leftNormal.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                dismiss();
                getMainViewModel().mirrorSet(view);
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            }
        });
        this.binding.hudSeatBg.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                dismiss();
                getMainViewModel().hudSeat(view);
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            }
        });
        return this.binding.getRoot();
    }

    @Override // com.geely.hvac.activity.BaseAutoHideDialog, com.geely.hvac.dialog.BaseDialog, android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        int i = this.mZone;
        if (i == 1) {
            this.binding.tvQuickSet.setVisibility(getMainViewModel().isHudAndRearMirrorActive() ? 0 : 8);
            this.binding.hudSeatBg.setVisibility(getMainViewModel().isFunctionAvailable(getMainViewModel().getSupportObservable(GlyCarPropertyIds.SETTING_FUNC_HUD_ACTIVE).get()) ? 0 : 8);
            this.binding.hudIcon.setVisibility(getMainViewModel().isFunctionAvailable(getMainViewModel().getSupportObservable(GlyCarPropertyIds.SETTING_FUNC_HUD_ACTIVE).get()) ? 0 : 8);
            this.binding.saveRight.setVisibility(8);
            this.binding.resetRight.setVisibility(8);
            this.binding.save.setVisibility(0);
            this.binding.reset.setVisibility(0);
            return;
        }
        if (i == 4) {
            this.binding.tvQuickSet.setVisibility(8);
            this.binding.hudSeatBg.setVisibility(8);
            this.binding.hudIcon.setVisibility(8);
            this.binding.saveRight.setVisibility(0);
            this.binding.resetRight.setVisibility(0);
            this.binding.save.setVisibility(8);
            this.binding.reset.setVisibility(8);
            return;
        }
        this.binding.tvQuickSet.setVisibility(8);
        this.binding.hudSeatBg.setVisibility(8);
        this.binding.hudIcon.setVisibility(8);
    }

    @Override // com.geely.hvac.activity.BaseAutoHideDialog, android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }
}
