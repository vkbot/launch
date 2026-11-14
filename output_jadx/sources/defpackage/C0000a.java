package defpackage;

import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;

/* renamed from: a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0000a implements InterfaceC0637yn {
    public boolean a = false;
    public int b;
    public final /* synthetic */ ActionBarContextView c;

    public C0000a(ActionBarContextView actionBarContextView) {
        this.c = actionBarContextView;
    }

    @Override // defpackage.InterfaceC0637yn
    public final void a() {
        if (this.a) {
            return;
        }
        ActionBarContextView actionBarContextView = this.c;
        actionBarContextView.f = null;
        super/*android.view.View*/.setVisibility(this.b);
    }

    @Override // defpackage.InterfaceC0637yn
    public final void b(View view) {
        this.a = true;
    }

    @Override // defpackage.InterfaceC0637yn
    public final void c() {
        super/*android.view.View*/.setVisibility(0);
        this.a = false;
    }
}
