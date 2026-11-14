package defpackage;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class Fd<S> extends AbstractC0479sf {
    public int S;
    public H3 T;

    @Override // defpackage.AbstractComponentCallbacksC0598x9
    public final void m(Bundle bundle) {
        super.m(bundle);
        if (bundle == null) {
            bundle = this.f;
        }
        this.S = bundle.getInt("THEME_RES_ID_KEY");
        if (bundle.getParcelable("DATE_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.T = (H3) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // defpackage.AbstractComponentCallbacksC0598x9
    public final View n(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.cloneInContext(new ContextThemeWrapper(h(), this.S));
        throw null;
    }

    @Override // defpackage.AbstractComponentCallbacksC0598x9
    public final void r(Bundle bundle) {
        bundle.putInt("THEME_RES_ID_KEY", this.S);
        bundle.putParcelable("DATE_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.T);
    }
}
