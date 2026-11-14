package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;

/* loaded from: classes.dex */
public final class Rh {
    public final Context a;
    public final Intent b;
    public final String c;
    public final S9 d;
    public volatile IBinder e;
    public boolean f;
    public final Qh g;

    public Rh(Context context, Intent intent, String str, S9 s9) {
        AbstractC0348nb.r(context, "context");
        AbstractC0348nb.r(s9, "onChange");
        this.a = context;
        this.b = intent;
        this.c = str;
        this.d = s9;
        this.g = new Qh(0, this);
    }

    public final Object a(int i, InterfaceC0089da interfaceC0089da, InterfaceC0089da interfaceC0089da2) {
        AbstractC0348nb.r(interfaceC0089da, "write");
        IBinder iBinder = this.e;
        Object obj = null;
        if (iBinder != null) {
            String str = this.c;
            Parcel obtain = Parcel.obtain();
            AbstractC0348nb.q(obtain, "obtain(...)");
            Parcel obtain2 = Parcel.obtain();
            AbstractC0348nb.q(obtain2, "obtain(...)");
            try {
                try {
                    obtain.writeInterfaceToken(str);
                    interfaceC0089da.h(obtain);
                    if (iBinder.transact(i, obtain, obtain2, 0)) {
                        obtain2.readException();
                        obj = interfaceC0089da2.h(obtain2);
                    }
                } catch (Exception e) {
                    Log.w("ServiceLink", str + " #" + i + ": " + e);
                }
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
        return obj;
    }
}
