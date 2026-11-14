package com.google.android.material.datepicker;

import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.omoda.launcher.R;
import defpackage.AbstractC0146fg;
import defpackage.AbstractC0561vm;
import defpackage.Bd;
import defpackage.C0325me;
import defpackage.C0351ne;
import defpackage.C0379og;
import defpackage.Eg;
import defpackage.H3;
import defpackage.L;
import java.util.Calendar;

/* loaded from: classes.dex */
public final class c extends AbstractC0146fg {
    public final H3 d;
    public final L e;
    public final int f;

    public c(ContextThemeWrapper contextThemeWrapper, H3 h3, L l) {
        C0325me c0325me = h3.a;
        C0325me c0325me2 = h3.d;
        if (c0325me.a.compareTo(c0325me2.a) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (c0325me2.a.compareTo(h3.b.a) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        this.f = (contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * C0351ne.d) + (Bd.E(contextThemeWrapper, android.R.attr.windowFullscreen) ? contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) : 0);
        this.d = h3;
        this.e = l;
        if (this.a.a()) {
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }
        this.b = true;
    }

    @Override // defpackage.AbstractC0146fg
    public final int a() {
        return this.d.g;
    }

    @Override // defpackage.AbstractC0146fg
    public final long b(int i) {
        Calendar a = AbstractC0561vm.a(this.d.a.a);
        a.add(2, i);
        a.set(5, 1);
        Calendar a2 = AbstractC0561vm.a(a);
        a2.get(2);
        a2.get(1);
        a2.getMaximum(7);
        a2.getActualMaximum(5);
        a2.getTimeInMillis();
        return a2.getTimeInMillis();
    }

    @Override // defpackage.AbstractC0146fg
    public final void c(Eg eg, int i) {
        b bVar = (b) eg;
        H3 h3 = this.d;
        Calendar a = AbstractC0561vm.a(h3.a.a);
        a.add(2, i);
        C0325me c0325me = new C0325me(a);
        bVar.u.setText(c0325me.c());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) bVar.v.findViewById(R.id.month_grid);
        if (materialCalendarGridView.a() == null || !c0325me.equals(materialCalendarGridView.a().a)) {
            new C0351ne(c0325me, h3);
            throw null;
        }
        materialCalendarGridView.invalidate();
        materialCalendarGridView.a().getClass();
        throw null;
    }

    @Override // defpackage.AbstractC0146fg
    public final Eg e(ViewGroup viewGroup) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!Bd.E(viewGroup.getContext(), android.R.attr.windowFullscreen)) {
            return new b(linearLayout, false);
        }
        linearLayout.setLayoutParams(new C0379og(-1, this.f));
        return new b(linearLayout, true);
    }
}
