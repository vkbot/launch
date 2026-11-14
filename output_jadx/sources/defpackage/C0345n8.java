package defpackage;

import android.text.InputFilter;
import android.widget.TextView;

/* renamed from: n8, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0345n8 extends C6 {
    public final C0319m8 A;

    public C0345n8(TextView textView) {
        this.A = new C0319m8(textView);
    }

    @Override // defpackage.C6
    public final void Q(boolean z) {
        if (C0035b8.j != null) {
            this.A.Q(z);
        }
    }

    @Override // defpackage.C6
    public final void R(boolean z) {
        boolean z2 = C0035b8.j != null;
        C0319m8 c0319m8 = this.A;
        if (z2) {
            c0319m8.R(z);
        } else {
            c0319m8.C = z;
        }
    }

    @Override // defpackage.C6
    public final InputFilter[] o(InputFilter[] inputFilterArr) {
        return !(C0035b8.j != null) ? inputFilterArr : this.A.o(inputFilterArr);
    }
}
