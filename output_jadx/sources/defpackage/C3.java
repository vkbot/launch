package defpackage;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class C3 {
    public final /* synthetic */ int a;
    public int b;
    public boolean c;
    public final Runnable d;
    public final /* synthetic */ V5 e;

    public C3(SideSheetBehavior sideSheetBehavior) {
        this.a = 1;
        this.e = sideSheetBehavior;
        this.d = new O(15, this);
    }

    public final void a(int i) {
        Runnable runnable = this.d;
        V5 v5 = this.e;
        switch (this.a) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) v5;
                WeakReference weakReference = bottomSheetBehavior.U;
                if (weakReference == null || weakReference.get() == null) {
                    return;
                }
                this.b = i;
                if (this.c) {
                    return;
                }
                WeakHashMap weakHashMap = AbstractC0205hn.a;
                Rm.m((View) bottomSheetBehavior.U.get(), (J2) runnable);
                this.c = true;
                return;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) v5;
                WeakReference weakReference2 = sideSheetBehavior.p;
                if (weakReference2 == null || weakReference2.get() == null) {
                    return;
                }
                this.b = i;
                if (this.c) {
                    return;
                }
                WeakHashMap weakHashMap2 = AbstractC0205hn.a;
                Rm.m((View) sideSheetBehavior.p.get(), (O) runnable);
                this.c = true;
                return;
        }
    }

    public C3(BottomSheetBehavior bottomSheetBehavior) {
        this.a = 0;
        this.e = bottomSheetBehavior;
        this.d = new J2(2, this);
    }
}
