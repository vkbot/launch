package defpackage;

import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;

/* renamed from: y2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0616y2 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ViewOnClickListenerC0616y2(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.a) {
            case 0:
                ((Yk) this.b).d();
                return;
            case 1:
                Yk yk = (Yk) this.b;
                AbstractC0348nb.r(yk, "$handler");
                yk.d();
                return;
            case 2:
                G4 g4 = (G4) this.b;
                EditText editText = g4.i;
                if (editText == null) {
                    return;
                }
                Editable text = editText.getText();
                if (text != null) {
                    text.clear();
                }
                g4.q();
                return;
            case 3:
                ((P7) this.b).u();
                return;
            case 4:
                ((Bd) this.b).C();
                throw null;
            case 5:
                C0068cf c0068cf = (C0068cf) this.b;
                EditText editText2 = c0068cf.f;
                if (editText2 == null) {
                    return;
                }
                int selectionEnd = editText2.getSelectionEnd();
                EditText editText3 = c0068cf.f;
                if (editText3 == null || !(editText3.getTransformationMethod() instanceof PasswordTransformationMethod)) {
                    c0068cf.f.setTransformationMethod(PasswordTransformationMethod.getInstance());
                } else {
                    c0068cf.f.setTransformationMethod(null);
                }
                if (selectionEnd >= 0) {
                    c0068cf.f.setSelection(selectionEnd);
                }
                c0068cf.q();
                return;
            default:
                Ii ii = (Ii) this.b;
                AbstractC0348nb.r(ii, "this$0");
                ii.e = true;
                ii.a();
                return;
        }
    }
}
