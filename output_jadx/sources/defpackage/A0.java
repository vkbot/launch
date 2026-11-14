package defpackage;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

/* loaded from: classes.dex */
public final class A0 implements AdapterView.OnItemClickListener {
    public final /* synthetic */ E0 a;
    public final /* synthetic */ B0 b;

    public A0(B0 b0, E0 e0) {
        this.b = b0;
        this.a = e0;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        B0 b0 = this.b;
        DialogInterface.OnClickListener onClickListener = b0.h;
        E0 e0 = this.a;
        onClickListener.onClick(e0.b, i);
        if (b0.i) {
            return;
        }
        e0.b.dismiss();
    }
}
