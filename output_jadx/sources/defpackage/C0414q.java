package defpackage;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* renamed from: q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0414q extends ClickableSpan {
    public final int a;
    public final J b;
    public final int c;

    public C0414q(int i, J j, int i2) {
        this.a = i;
        this.b = j;
        this.c = i2;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.a);
        this.b.a.performAction(this.c, bundle);
    }
}
