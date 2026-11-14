package defpackage;

import android.text.InputFilter;
import android.text.Spanned;
import android.widget.TextView;

/* renamed from: i8, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0216i8 implements InputFilter {
    public final TextView a;
    public C0190h8 b;

    public C0216i8(TextView textView) {
        this.a = textView;
    }

    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        TextView textView = this.a;
        if (textView.isInEditMode()) {
            return charSequence;
        }
        int b = C0035b8.a().b();
        if (b != 0) {
            if (b == 1) {
                if ((i4 == 0 && i3 == 0 && spanned.length() == 0 && charSequence == textView.getText()) || charSequence == null) {
                    return charSequence;
                }
                if (i != 0 || i2 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i, i2);
                }
                return C0035b8.a().e(charSequence, 0, charSequence.length());
            }
            if (b != 3) {
                return charSequence;
            }
        }
        C0035b8 a = C0035b8.a();
        if (this.b == null) {
            this.b = new C0190h8(textView, this);
        }
        a.f(this.b);
        return charSequence;
    }
}
