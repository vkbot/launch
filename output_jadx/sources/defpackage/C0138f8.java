package defpackage;

import android.text.Editable;

/* renamed from: f8, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0138f8 extends Editable.Factory {
    public static final Object a = new Object();
    public static volatile C0138f8 b;
    public static Class c;

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = c;
        return cls != null ? new C0482si(cls, charSequence) : super.newEditable(charSequence);
    }
}
