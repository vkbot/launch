package defpackage;

import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;

/* loaded from: classes.dex */
public final class V1 implements InterfaceC0029b2, DialogInterface.OnClickListener {
    public F0 a;
    public W1 b;
    public CharSequence c;
    public final /* synthetic */ C0055c2 d;

    public V1(C0055c2 c0055c2) {
        this.d = c0055c2;
    }

    @Override // defpackage.InterfaceC0029b2
    public final boolean a() {
        F0 f0 = this.a;
        if (f0 != null) {
            return f0.isShowing();
        }
        return false;
    }

    @Override // defpackage.InterfaceC0029b2
    public final CharSequence b() {
        return this.c;
    }

    @Override // defpackage.InterfaceC0029b2
    public final void c(int i) {
        Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.InterfaceC0029b2
    public final int d() {
        return 0;
    }

    @Override // defpackage.InterfaceC0029b2
    public final void dismiss() {
        F0 f0 = this.a;
        if (f0 != null) {
            f0.dismiss();
            this.a = null;
        }
    }

    @Override // defpackage.InterfaceC0029b2
    public final void f(int i, int i2) {
        if (this.b == null) {
            return;
        }
        C0055c2 c0055c2 = this.d;
        C0558vj c0558vj = new C0558vj(c0055c2.getPopupContext());
        CharSequence charSequence = this.c;
        B0 b0 = (B0) c0558vj.b;
        if (charSequence != null) {
            b0.d = charSequence;
        }
        W1 w1 = this.b;
        int selectedItemPosition = c0055c2.getSelectedItemPosition();
        b0.g = w1;
        b0.h = this;
        b0.j = selectedItemPosition;
        b0.i = true;
        F0 d = c0558vj.d();
        this.a = d;
        AlertController$RecycleListView alertController$RecycleListView = d.f.e;
        T1.d(alertController$RecycleListView, i);
        T1.c(alertController$RecycleListView, i2);
        this.a.show();
    }

    @Override // defpackage.InterfaceC0029b2
    public final void g(CharSequence charSequence) {
        this.c = charSequence;
    }

    @Override // defpackage.InterfaceC0029b2
    public final int i() {
        return 0;
    }

    @Override // defpackage.InterfaceC0029b2
    public final void j(Drawable drawable) {
        Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.InterfaceC0029b2
    public final void k(int i) {
        Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.InterfaceC0029b2
    public final Drawable l() {
        return null;
    }

    @Override // defpackage.InterfaceC0029b2
    public final void m(ListAdapter listAdapter) {
        this.b = (W1) listAdapter;
    }

    @Override // defpackage.InterfaceC0029b2
    public final void n(int i) {
        Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        C0055c2 c0055c2 = this.d;
        c0055c2.setSelection(i);
        if (c0055c2.getOnItemClickListener() != null) {
            c0055c2.performItemClick(null, i, this.b.getItemId(i));
        }
        dismiss();
    }
}
