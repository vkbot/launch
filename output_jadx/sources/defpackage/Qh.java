package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;

/* loaded from: classes.dex */
public final class Qh implements ServiceConnection {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ Qh(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Parcel obtain;
        Parcel obtain2;
        switch (this.a) {
            case 0:
                AbstractC0348nb.r(componentName, "name");
                AbstractC0348nb.r(iBinder, "service");
                ((Rh) this.b).e = iBinder;
                ((Rh) this.b).d.d();
                return;
            default:
                AbstractC0348nb.r(componentName, "name");
                AbstractC0348nb.r(iBinder, "service");
                C0307lm c0307lm = (C0307lm) this.b;
                c0307lm.b = iBinder;
                c0307lm.c = true;
                Log.i("UiVisibility", "Connected to SystemUI UiVisibility service");
                IBinder iBinder2 = c0307lm.b;
                if (iBinder2 != null) {
                    obtain = Parcel.obtain();
                    AbstractC0348nb.q(obtain, "obtain(...)");
                    obtain2 = Parcel.obtain();
                    AbstractC0348nb.q(obtain2, "obtain(...)");
                    try {
                        try {
                            obtain.writeInterfaceToken("com.chery.window.IWindowUiVisibility");
                            obtain.writeStrongBinder(c0307lm.g);
                            obtain.writeInt(3);
                            obtain.writeString("OmodaLauncher");
                            obtain.writeString(c0307lm.a.getPackageName());
                            iBinder2.transact(4, obtain, obtain2, 0);
                            obtain2.readException();
                            c0307lm.e = true;
                            Log.i("UiVisibility", "registerUiListener OK");
                        } catch (Exception e) {
                            Log.e("UiVisibility", "registerUiListener failed: " + e.getMessage());
                        }
                    } finally {
                    }
                }
                IBinder iBinder3 = c0307lm.b;
                if (iBinder3 == null) {
                    return;
                }
                obtain = Parcel.obtain();
                AbstractC0348nb.q(obtain, "obtain(...)");
                obtain2 = Parcel.obtain();
                AbstractC0348nb.q(obtain2, "obtain(...)");
                try {
                    try {
                        obtain.writeInterfaceToken("com.chery.window.IWindowUiVisibility");
                        obtain.writeStrongBinder(c0307lm.g);
                        obtain.writeInt(2);
                        obtain.writeString("OmodaLauncher");
                        obtain.writeString(c0307lm.a.getPackageName());
                        iBinder3.transact(6, obtain, obtain2, 0);
                        obtain2.readException();
                        c0307lm.f = true;
                        Log.i("UiVisibility", "registerUiTarget OK");
                    } finally {
                    }
                } catch (Exception e2) {
                    Log.e("UiVisibility", "registerUiTarget failed: " + e2.getMessage());
                }
                return;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        switch (this.a) {
            case 0:
                AbstractC0348nb.r(componentName, "name");
                ((Rh) this.b).e = null;
                ((Rh) this.b).d.d();
                return;
            default:
                AbstractC0348nb.r(componentName, "name");
                C0307lm c0307lm = (C0307lm) this.b;
                c0307lm.b = null;
                c0307lm.c = false;
                c0307lm.e = false;
                c0307lm.f = false;
                Log.w("UiVisibility", "Disconnected from SystemUI UiVisibility service");
                return;
        }
    }
}
