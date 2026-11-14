package defpackage;

import android.text.Editable;

/* renamed from: y8, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0622y8 extends Uj {
    public final /* synthetic */ B8 a;

    public C0622y8(B8 b8) {
        this.a = b8;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        this.a.b().a();
    }

    @Override // defpackage.Uj, android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.a.b().b();
    }
}
