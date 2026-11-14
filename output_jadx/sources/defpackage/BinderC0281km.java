package defpackage;

import android.os.Binder;
import android.os.Parcel;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* renamed from: km, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class BinderC0281km extends Binder {
    public final /* synthetic */ C0307lm a;

    public BinderC0281km(C0307lm c0307lm) {
        this.a = c0307lm;
        attachInterface(null, "com.chery.window.IUiVisibilityListener");
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        AbstractC0348nb.r(parcel, "data");
        if (i != 1) {
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            if (parcel2 == null) {
                return true;
            }
            parcel2.writeString("com.chery.window.IUiVisibilityListener");
            return true;
        }
        parcel.enforceInterface("com.chery.window.IUiVisibilityListener");
        parcel.readInt();
        int readInt = parcel.readInt();
        if (parcel2 != null) {
            parcel2.writeNoException();
        }
        boolean z = readInt != 0;
        L l = this.a.d;
        if (l == null) {
            return true;
        }
        TopOverlayAccessibilityService topOverlayAccessibilityService = (TopOverlayAccessibilityService) l.b;
        topOverlayAccessibilityService.w.post(new O2(topOverlayAccessibilityService, z));
        return true;
    }
}
