package defpackage;

import android.text.TextUtils;
import android.view.View;

/* loaded from: classes.dex */
public final class Om extends AbstractC0201hj {
    public final /* synthetic */ int e;

    public Om(int i, Class cls, int i2, int i3, int i4) {
        this.e = i4;
        this.a = i;
        this.d = cls;
        this.c = i2;
        this.b = i3;
    }

    @Override // defpackage.AbstractC0201hj
    public final Object b(View view) {
        switch (this.e) {
            case 0:
                return AbstractC0050bn.b(view);
            default:
                return Boolean.valueOf(AbstractC0050bn.c(view));
        }
    }

    @Override // defpackage.AbstractC0201hj
    public final void c(View view, Object obj) {
        switch (this.e) {
            case 0:
                AbstractC0050bn.h(view, (CharSequence) obj);
                return;
            default:
                AbstractC0050bn.g(view, ((Boolean) obj).booleanValue());
                return;
        }
    }

    @Override // defpackage.AbstractC0201hj
    public final boolean e(Object obj, Object obj2) {
        switch (this.e) {
            case 0:
                return !TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
            default:
                Boolean bool = (Boolean) obj;
                Boolean bool2 = (Boolean) obj2;
                return true ^ ((bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue()));
        }
    }
}
