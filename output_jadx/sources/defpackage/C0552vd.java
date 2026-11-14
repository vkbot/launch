package defpackage;

import android.R;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.datepicker.c;

/* renamed from: vd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0552vd<S> extends AbstractC0479sf {
    public int S;
    public H3 T;
    public C0325me U;
    public int V;
    public K1 W;
    public RecyclerView X;
    public RecyclerView Y;
    public View Z;
    public View a0;
    public View b0;
    public View c0;

    public final void B(C0325me c0325me) {
        c cVar = (c) this.Y.getAdapter();
        int d = cVar.d.a.d(c0325me);
        int d2 = d - cVar.d.a.d(this.U);
        boolean z = Math.abs(d2) > 3;
        boolean z2 = d2 > 0;
        this.U = c0325me;
        if (z && z2) {
            this.Y.i0(d - 3);
            this.Y.post(new J3(d, 2, this));
        } else if (!z) {
            this.Y.post(new J3(d, 2, this));
        } else {
            this.Y.i0(d + 3);
            this.Y.post(new J3(d, 2, this));
        }
    }

    public final void C(int i) {
        this.V = i;
        if (i == 2) {
            this.X.getLayoutManager().n0(this.U.c - ((Po) this.X.getAdapter()).d.T.a.c);
            this.b0.setVisibility(0);
            this.c0.setVisibility(8);
            this.Z.setVisibility(8);
            this.a0.setVisibility(8);
            return;
        }
        if (i == 1) {
            this.b0.setVisibility(8);
            this.c0.setVisibility(0);
            this.Z.setVisibility(0);
            this.a0.setVisibility(0);
            B(this.U);
        }
    }

    @Override // defpackage.AbstractComponentCallbacksC0598x9
    public final void m(Bundle bundle) {
        super.m(bundle);
        if (bundle == null) {
            bundle = this.f;
        }
        this.S = bundle.getInt("THEME_RES_ID_KEY");
        if (bundle.getParcelable("GRID_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.T = (H3) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        if (bundle.getParcelable("DAY_VIEW_DECORATOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.U = (C0325me) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // defpackage.AbstractComponentCallbacksC0598x9
    public final View n(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        int i;
        int i2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(h(), this.S);
        this.W = new K1(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        C0325me c0325me = this.T.a;
        if (Bd.E(contextThemeWrapper, R.attr.windowFullscreen)) {
            i = com.omoda.launcher.R.layout.mtrl_calendar_vertical;
            i2 = 1;
        } else {
            i = com.omoda.launcher.R.layout.mtrl_calendar_horizontal;
            i2 = 0;
        }
        View inflate = cloneInContext.inflate(i, viewGroup, false);
        Resources resources = w().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(com.omoda.launcher.R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelOffset(com.omoda.launcher.R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelSize(com.omoda.launcher.R.dimen.mtrl_calendar_navigation_height);
        int dimensionPixelSize = resources.getDimensionPixelSize(com.omoda.launcher.R.dimen.mtrl_calendar_days_of_week_height);
        int i3 = C0351ne.d;
        inflate.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(com.omoda.launcher.R.dimen.mtrl_calendar_month_vertical_padding) * (i3 - 1)) + (resources.getDimensionPixelSize(com.omoda.launcher.R.dimen.mtrl_calendar_day_height) * i3) + resources.getDimensionPixelOffset(com.omoda.launcher.R.dimen.mtrl_calendar_bottom_padding));
        GridView gridView = (GridView) inflate.findViewById(com.omoda.launcher.R.id.mtrl_calendar_days_of_week);
        AbstractC0205hn.h(gridView, new C0452rd(0));
        int i4 = this.T.e;
        gridView.setAdapter((ListAdapter) (i4 > 0 ? new A6(i4) : new A6()));
        gridView.setNumColumns(c0325me.d);
        gridView.setEnabled(false);
        this.Y = (RecyclerView) inflate.findViewById(com.omoda.launcher.R.id.mtrl_calendar_months);
        this.Y.setLayoutManager(new C0477sd(this, i2, i2));
        this.Y.setTag("MONTHS_VIEW_GROUP_TAG");
        c cVar = new c(contextThemeWrapper, this.T, new L(19, this));
        this.Y.setAdapter(cVar);
        int integer = contextThemeWrapper.getResources().getInteger(com.omoda.launcher.R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(com.omoda.launcher.R.id.mtrl_calendar_year_selector_frame);
        this.X = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.X.setLayoutManager(new GridLayoutManager(integer));
            this.X.setAdapter(new Po(this));
            this.X.i(new C0502td(this));
        }
        if (inflate.findViewById(com.omoda.launcher.R.id.month_navigation_fragment_toggle) != null) {
            MaterialButton materialButton = (MaterialButton) inflate.findViewById(com.omoda.launcher.R.id.month_navigation_fragment_toggle);
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            AbstractC0205hn.h(materialButton, new C0212i4(2, this));
            View findViewById = inflate.findViewById(com.omoda.launcher.R.id.month_navigation_previous);
            this.Z = findViewById;
            findViewById.setTag("NAVIGATION_PREV_TAG");
            View findViewById2 = inflate.findViewById(com.omoda.launcher.R.id.month_navigation_next);
            this.a0 = findViewById2;
            findViewById2.setTag("NAVIGATION_NEXT_TAG");
            this.b0 = inflate.findViewById(com.omoda.launcher.R.id.mtrl_calendar_year_selector_frame);
            this.c0 = inflate.findViewById(com.omoda.launcher.R.id.mtrl_calendar_day_selector_frame);
            C(1);
            materialButton.setText(this.U.c());
            this.Y.j(new C0527ud(this, cVar, materialButton));
            materialButton.setOnClickListener(new Z(2, this));
            this.a0.setOnClickListener(new ViewOnClickListenerC0428qd(this, cVar, 1));
            this.Z.setOnClickListener(new ViewOnClickListenerC0428qd(this, cVar, 0));
        }
        if (!Bd.E(contextThemeWrapper, R.attr.windowFullscreen)) {
            new C0323mc(1).a(this.Y);
        }
        this.Y.i0(cVar.d.a.d(this.U));
        AbstractC0205hn.h(this.Y, new C0452rd(1));
        return inflate;
    }

    @Override // defpackage.AbstractComponentCallbacksC0598x9
    public final void r(Bundle bundle) {
        bundle.putInt("THEME_RES_ID_KEY", this.S);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.T);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.U);
    }
}
