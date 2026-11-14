package defpackage;

import android.widget.EditText;
import java.lang.ref.WeakReference;

/* renamed from: o8, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0371o8 extends Z7 {
    public final WeakReference a;

    public C0371o8(EditText editText) {
        this.a = new WeakReference(editText);
    }

    @Override // defpackage.Z7
    public final void a() {
        C0397p8.a((EditText) this.a.get(), 1);
    }
}
