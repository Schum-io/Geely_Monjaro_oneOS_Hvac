package android.bluetooth;

import java.util.List;

public final class BluetoothHeadsetClient implements BluetoothProfile {
    public boolean connect(BluetoothDevice device) {
        return false;
    }

    public boolean disconnect(BluetoothDevice device) {
        return false;
    }

    public List<BluetoothDevice> getConnectedDevices() {
        return null;
    }

    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] states) {
        return null;
    }

    public int getConnectionState(BluetoothDevice device) {
        return 0;
    }

    public boolean setPriority(BluetoothDevice device, int priority) {
        return false;
    }

    public int getPriority(BluetoothDevice device) {
        return 0;
    }
}