package defpackage;

import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* renamed from: z8, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0647z8 {
    public final /* synthetic */ B8 a;

    public C0647z8(B8 b8) {
        this.a = b8;
    }

    public final void a(TextInputLayout textInputLayout) {
        B8 b8 = this.a;
        if (b8.s == textInputLayout.getEditText()) {
            return;
        }
        EditText editText = b8.s;
        C0622y8 c0622y8 = b8.v;
        if (editText != null) {
            editText.removeTextChangedListener(c0622y8);
            if (b8.s.getOnFocusChangeListener() == b8.b().e()) {
                b8.s.setOnFocusChangeListener(null);
            }
        }
        EditText editText2 = textInputLayout.getEditText();
        b8.s = editText2;
        if (editText2 != null) {
            editText2.addTextChangedListener(c0622y8);
        }
        b8.b().m(b8.s);
        b8.j(b8.b());
    }
}
