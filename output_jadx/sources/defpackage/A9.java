package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.a;

/* loaded from: classes.dex */
public final class A9 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ a a;
    public final /* synthetic */ B9 b;

    public A9(B9 b9, a aVar) {
        this.b = b9;
        this.a = aVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        a aVar = this.a;
        aVar.k();
        Z6.f((ViewGroup) aVar.c.E.getParent(), this.b.a.C()).e();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
