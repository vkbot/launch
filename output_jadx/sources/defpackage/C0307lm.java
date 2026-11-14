package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* renamed from: lm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0307lm {
    public final Context a;
    public IBinder b;
    public boolean c;
    public L d;
    public boolean e;
    public boolean f;
    public final BinderC0281km g = new BinderC0281km(this);
    public final Qh h = new Qh(1, this);

    public C0307lm(TopOverlayAccessibilityService topOverlayAccessibilityService) {
        this.a = topOverlayAccessibilityService.getApplicationContext();
    }

    public final void a(boolean z) {
        IBinder iBinder = this.b;
        if (iBinder == null) {
            return;
        }
        int i = z ? 0 : 2;
        Parcel obtain = Parcel.obtain();
        AbstractC0348nb.q(obtain, "obtain(...)");
        Parcel obtain2 = Parcel.obtain();
        AbstractC0348nb.q(obtain2, "obtain(...)");
        try {
            try {
                obtain.writeInterfaceToken("com.chery.window.IWindowUiVisibility");
                obtain.writeInt(3);
                obtain.writeInt(i);
                obtain.writeString("OmodaLauncher");
                obtain.writeString(this.a.getPackageName());
                iBinder.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                Log.i("UiVisibility", "setFullscreen(" + z + ") OK");
            } catch (Exception e) {
                Log.e("UiVisibility", "setFullscreen failed: " + e.getMessage());
                this.b = null;
                this.c = false;
            }
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }
}
