package defpackage;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.omoda.launcher.R;

/* renamed from: cf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0068cf extends C8 {
    public final int e;
    public EditText f;
    public final ViewOnClickListenerC0616y2 g;

    public C0068cf(B8 b8, int i) {
        super(b8);
        this.e = R.drawable.design_password_eye;
        this.g = new ViewOnClickListenerC0616y2(5, this);
        if (i != 0) {
            this.e = i;
        }
    }

    @Override // defpackage.C8
    public final void b() {
        q();
    }

    @Override // defpackage.C8
    public final int c() {
        return R.string.password_toggle_content_description;
    }

    @Override // defpackage.C8
    public final int d() {
        return this.e;
    }

    @Override // defpackage.C8
    public final View.OnClickListener f() {
        return this.g;
    }

    @Override // defpackage.C8
    public final boolean k() {
        return true;
    }

    @Override // defpackage.C8
    public final boolean l() {
        EditText editText = this.f;
        return !(editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod));
    }

    @Override // defpackage.C8
    public final void m(EditText editText) {
        this.f = editText;
        q();
    }

    @Override // defpackage.C8
    public final void r() {
        EditText editText = this.f;
        if (editText != null) {
            if (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224) {
                this.f.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
    }

    @Override // defpackage.C8
    public final void s() {
        EditText editText = this.f;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
