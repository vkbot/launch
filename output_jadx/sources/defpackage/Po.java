package defpackage;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import com.omoda.launcher.R;
import java.util.Locale;

/* loaded from: classes.dex */
public final class Po extends AbstractC0146fg {
    public final C0552vd d;

    public Po(C0552vd c0552vd) {
        this.d = c0552vd;
    }

    @Override // defpackage.AbstractC0146fg
    public final int a() {
        return this.d.T.f;
    }

    @Override // defpackage.AbstractC0146fg
    public final void c(Eg eg, int i) {
        C0552vd c0552vd = this.d;
        int i2 = c0552vd.T.a.c + i;
        String format = String.format(Locale.getDefault(), "%d", Integer.valueOf(i2));
        TextView textView = ((Oo) eg).u;
        textView.setText(format);
        Context context = textView.getContext();
        textView.setContentDescription(AbstractC0561vm.b().get(1) == i2 ? String.format(context.getString(R.string.mtrl_picker_navigate_to_current_year_description), Integer.valueOf(i2)) : String.format(context.getString(R.string.mtrl_picker_navigate_to_year_description), Integer.valueOf(i2)));
        K1 k1 = c0552vd.W;
        if (AbstractC0561vm.b().get(1) == i2) {
            Object obj = k1.c;
        } else {
            Object obj2 = k1.b;
        }
        throw null;
    }

    @Override // defpackage.AbstractC0146fg
    public final Eg e(ViewGroup viewGroup) {
        return new Oo((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_year, viewGroup, false));
    }
}
