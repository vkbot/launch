package com.google.android.material.datepicker;

import android.view.View;
import android.widget.AdapterView;
import defpackage.C0351ne;
import defpackage.C0552vd;

/* loaded from: classes.dex */
public final class a implements AdapterView.OnItemClickListener {
    public final /* synthetic */ MaterialCalendarGridView a;
    public final /* synthetic */ c b;

    public a(c cVar, MaterialCalendarGridView materialCalendarGridView) {
        this.b = cVar;
        this.a = materialCalendarGridView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        MaterialCalendarGridView materialCalendarGridView = this.a;
        C0351ne a = materialCalendarGridView.a();
        if (i < a.a() || i > a.c()) {
            return;
        }
        if (materialCalendarGridView.a().getItem(i).longValue() >= ((C0552vd) this.b.e.b).T.c.a) {
            throw null;
        }
    }
}
