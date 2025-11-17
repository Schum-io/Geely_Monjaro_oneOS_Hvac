package com.geely.os.rescue;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothProfile;
import android.content.Context;
import android.net.Uri;
import android.telecom.TelecomManager;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import com.ecarx.xui.adaptapi.FunctionStatus;
import com.ecarx.xui.adaptapi.oncall.Call;
import com.ecarx.xui.adaptapi.oncall.OnCall;
import com.geely.os.car.GlyLog;
import java.util.List;

/* loaded from: classes.dex */
public class GlyRescueHandlerImpl implements IGlyRescueHandler {
    private BluetoothAdapter mBluetoothAdapter;
    private BluetoothProfile mBluetoothHeadsetClient;
    private Context mContext;
    private OnCall mOnCall;
    private final OnCall.ICallListener mCallListener = new OnCall.ICallListener() { // from class: com.geely.os.rescue.GlyRescueHandlerImpl.1
        public void onCallCreate(Call call) {
            GlyLog.d("OneVehicleSDK_GlyRescueHandlerImpl", "onCallCreate call: " + call);
        }

        public void onCallStatusChanged(int callType, int status) {
            GlyLog.d("OneVehicleSDK_GlyRescueHandlerImpl", "onCallCreate callType: " + callType + ", status: " + status);
        }
    };
    private BluetoothProfile.ServiceListener mBluetoothProfileListener = new BluetoothProfile.ServiceListener() {
        @Override
        public void onServiceConnected(int profile, BluetoothProfile proxy) {
            GlyLog.d("OneVehicleSDK_GlyRescueHandlerImpl", "onServiceConnected init profile: " + profile);
            // 16 is the integer value for HEADSET_CLIENT
            if (profile == 16) {
                // Fix: No cast required
                GlyRescueHandlerImpl.this.mBluetoothHeadsetClient = proxy;
            }
        }

        @Override
        public void onServiceDisconnected(int profile) {
            if (profile == 16) {
                GlyLog.d("OneVehicleSDK_GlyRescueHandlerImpl", "init mBluetoothHeadsetClient success");
                GlyRescueHandlerImpl.this.mBluetoothHeadsetClient = null;
            }
        }
    };

    @Override // com.geely.os.rescue.IGlyRescueHandler
    public void initBluetooth() {
        GlyLog.d("OneVehicleSDK_GlyRescueHandlerImpl", "initBluetooth");
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        this.mBluetoothAdapter = defaultAdapter;
        if (defaultAdapter != null && defaultAdapter.isEnabled() && this.mBluetoothHeadsetClient == null) {
            this.mBluetoothAdapter.getProfileProxy(this.mContext, this.mBluetoothProfileListener, 16);
        }
    }

    @Override // com.geely.os.rescue.IGlyRescueHandler
    public void initOnCall(Context context) {
        this.mContext = context;
        if (this.mOnCall == null) {
            this.mOnCall = OnCall.create(context);
        }
        GlyLog.d("OneVehicleSDK_GlyRescueHandlerImpl", "initOnCall mOnCall: " + this.mOnCall);
        OnCall onCall = this.mOnCall;
        if (onCall != null) {
            onCall.registerCallListener(this.mCallListener);
        }
    }

    @Override // com.geely.os.rescue.IGlyRescueHandler
    public void callSOS() {
        GlyLog.d("OneVehicleSDK_GlyRescueHandlerImpl", "callSOS");
        OnCall onCall = this.mOnCall;
        if (onCall != null) {
            onCall.startCall(1);
        }
    }

    @Override // com.geely.os.rescue.IGlyRescueHandler
    public void callRescue(String number) {
        GlyLog.d("OneVehicleSDK_GlyRescueHandlerImpl", "callRescue");
        TelecomManager telecomManager = (TelecomManager) this.mContext.getSystemService("telecom");
        if (telecomManager != null) {
            Uri uriFromParts = Uri.fromParts("tel", number.trim(), null);
            if (ActivityCompat.checkSelfPermission(this.mContext, "android.permission.CALL_PHONE") != 0) {
                return;
            }
            telecomManager.placeCall(uriFromParts, null);
        }
    }

    @Override // com.geely.os.rescue.IGlyRescueHandler
    public boolean isSupportSOS() {
        GlyLog.d("OneVehicleSDK_GlyRescueHandlerImpl", "isSupportSOS");
        OnCall onCall = this.mOnCall;
        return onCall != null && onCall.isOnCallSupported(1) == FunctionStatus.active;
    }

    @Override // com.geely.os.rescue.IGlyRescueHandler
    public boolean isConnectedBTPhone() {
        GlyLog.d("OneVehicleSDK_GlyRescueHandlerImpl", "isConnectedBTPhone");
        BluetoothProfile bluetoothHeadsetClient = this.mBluetoothHeadsetClient;
        if (bluetoothHeadsetClient == null) {
            GlyLog.w("OneVehicleSDK_GlyRescueHandlerImpl", "mBluetoothHeadsetClient == null");
            return false;
        }
        List connectedDevices = bluetoothHeadsetClient.getConnectedDevices();
        GlyLog.w("OneVehicleSDK_GlyRescueHandlerImpl", "connectedDevices " + connectedDevices);
        if (connectedDevices == null || connectedDevices.size() <= 0) {
            return false;
        }
        GlyLog.w("OneVehicleSDK_GlyRescueHandlerImpl", "isConnectedBTPhone true ");
        return true;
    }

    @Override // com.geely.os.rescue.IGlyRescueHandler
    public void startBtPanel() {
        GlyLog.d("OneVehicleSDK_GlyRescueHandlerImpl", "startBtPanel");
        Toast.makeText(this.mContext, "请连接蓝牙", 0).show();
    }
}
