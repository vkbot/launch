package defpackage;

import android.view.View;
import android.widget.Button;
import androidx.appcompat.widget.Toolbar;

/* loaded from: classes.dex */
public final class Z implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ Z(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.a) {
            case 0:
                ((AbstractC0389p0) this.b).a();
                return;
            case 1:
                E0 e0 = (E0) this.b;
                Button button = e0.f;
                e0.v.obtainMessage(1, e0.b).sendToTarget();
                return;
            case 2:
                C0552vd c0552vd = (C0552vd) this.b;
                int i = c0552vd.V;
                if (i == 2) {
                    c0552vd.C(1);
                    return;
                } else {
                    if (i == 1) {
                        c0552vd.C(2);
                        return;
                    }
                    return;
                }
            default:
                C0634yk c0634yk = ((Toolbar) this.b).L;
                Pd pd = c0634yk == null ? null : c0634yk.b;
                if (pd != null) {
                    pd.collapseActionView();
                    return;
                }
                return;
        }
    }
}
