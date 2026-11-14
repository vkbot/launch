package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import androidx.appcompat.view.menu.ExpandedMenuView;

/* renamed from: tc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0501tc implements InterfaceC0118ee, AdapterView.OnItemClickListener {
    public Context a;
    public LayoutInflater b;
    public Ld c;
    public ExpandedMenuView d;
    public InterfaceC0093de e;
    public C0476sc f;

    public C0501tc(ContextWrapper contextWrapper) {
        this.a = contextWrapper;
        this.b = LayoutInflater.from(contextWrapper);
    }

    @Override // defpackage.InterfaceC0118ee
    public final void b(Ld ld, boolean z) {
        InterfaceC0093de interfaceC0093de = this.e;
        if (interfaceC0093de != null) {
            interfaceC0093de.b(ld, z);
        }
    }

    @Override // defpackage.InterfaceC0118ee
    public final void c() {
        C0476sc c0476sc = this.f;
        if (c0476sc != null) {
            c0476sc.notifyDataSetChanged();
        }
    }

    @Override // defpackage.InterfaceC0118ee
    public final boolean d() {
        return false;
    }

    @Override // defpackage.InterfaceC0118ee
    public final void f(Context context, Ld ld) {
        if (this.a != null) {
            this.a = context;
            if (this.b == null) {
                this.b = LayoutInflater.from(context);
            }
        }
        this.c = ld;
        C0476sc c0476sc = this.f;
        if (c0476sc != null) {
            c0476sc.notifyDataSetChanged();
        }
    }

    @Override // defpackage.InterfaceC0118ee
    public final boolean g(Pd pd) {
        return false;
    }

    @Override // defpackage.InterfaceC0118ee
    public final void i(InterfaceC0093de interfaceC0093de) {
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [de, android.content.DialogInterface$OnClickListener, Md, java.lang.Object, android.content.DialogInterface$OnDismissListener] */
    @Override // defpackage.InterfaceC0118ee
    public final boolean j(Ti ti) {
        if (!ti.hasVisibleItems()) {
            return false;
        }
        ?? obj = new Object();
        obj.a = ti;
        Context context = ti.a;
        C0558vj c0558vj = new C0558vj(context);
        B0 b0 = (B0) c0558vj.b;
        C0501tc c0501tc = new C0501tc(b0.a);
        obj.c = c0501tc;
        c0501tc.e = obj;
        ti.b(c0501tc, context);
        C0501tc c0501tc2 = obj.c;
        if (c0501tc2.f == null) {
            c0501tc2.f = new C0476sc(c0501tc2);
        }
        b0.g = c0501tc2.f;
        b0.h = obj;
        View view = ti.o;
        if (view != null) {
            b0.e = view;
        } else {
            b0.c = ti.n;
            b0.d = ti.m;
        }
        b0.f = obj;
        F0 d = c0558vj.d();
        obj.b = d;
        d.setOnDismissListener(obj);
        WindowManager.LayoutParams attributes = obj.b.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        obj.b.show();
        InterfaceC0093de interfaceC0093de = this.e;
        if (interfaceC0093de == null) {
            return true;
        }
        interfaceC0093de.p(ti);
        return true;
    }

    @Override // defpackage.InterfaceC0118ee
    public final boolean k(Pd pd) {
        return false;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.c.q(this.f.getItem(i), this, 0);
    }
}
