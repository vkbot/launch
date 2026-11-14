package defpackage;

import android.content.Context;
import android.view.View;
import android.view.Window;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.android.material.datepicker.c;
import java.util.Calendar;

/* renamed from: qd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC0428qd implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ViewOnClickListenerC0428qd(C0552vd c0552vd, c cVar, int i) {
        this.a = i;
        this.c = c0552vd;
        this.b = cVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.a) {
            case 0:
                C0552vd c0552vd = (C0552vd) this.c;
                int L0 = ((LinearLayoutManager) c0552vd.Y.getLayoutManager()).L0() - 1;
                if (L0 >= 0) {
                    Calendar a = AbstractC0561vm.a(((c) this.b).d.a.a);
                    a.add(2, L0);
                    c0552vd.B(new C0325me(a));
                    return;
                }
                return;
            case 1:
                C0552vd c0552vd2 = (C0552vd) this.c;
                int K0 = ((LinearLayoutManager) c0552vd2.Y.getLayoutManager()).K0() + 1;
                if (K0 < c0552vd2.Y.getAdapter().a()) {
                    Calendar a2 = AbstractC0561vm.a(((c) this.b).d.a.a);
                    a2.add(2, K0);
                    c0552vd2.B(new C0325me(a2));
                    return;
                }
                return;
            default:
                Dk dk = (Dk) this.c;
                Window.Callback callback = dk.k;
                if (callback == null || !dk.l) {
                    return;
                }
                callback.onMenuItemSelected(0, (C0104e0) this.b);
                return;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, e0] */
    public ViewOnClickListenerC0428qd(Dk dk) {
        this.a = 2;
        this.c = dk;
        Context context = dk.a.getContext();
        CharSequence charSequence = dk.h;
        ?? obj = new Object();
        obj.e = 4096;
        obj.g = 4096;
        obj.l = null;
        obj.m = null;
        obj.n = false;
        obj.o = false;
        obj.p = 16;
        obj.i = context;
        obj.a = charSequence;
        this.b = obj;
    }
}
