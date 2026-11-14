package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import defpackage.C0491t2;
import defpackage.InterfaceC0170ge;
import defpackage.Kd;
import defpackage.Ld;
import defpackage.Pd;

/* loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements Kd, InterfaceC0170ge, AdapterView.OnItemClickListener {
    public static final int[] b = {R.attr.background, R.attr.divider};
    public Ld a;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        C0491t2 q = C0491t2.q(context, attributeSet, b, R.attr.listViewStyle);
        TypedArray typedArray = (TypedArray) q.a;
        if (typedArray.hasValue(0)) {
            setBackgroundDrawable(q.h(0));
        }
        if (typedArray.hasValue(1)) {
            setDivider(q.h(1));
        }
        q.r();
    }

    @Override // defpackage.InterfaceC0170ge
    public final void b(Ld ld) {
        this.a = ld;
    }

    @Override // defpackage.Kd
    public final boolean c(Pd pd) {
        return this.a.q(pd, null, 0);
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        c((Pd) getAdapter().getItem(i));
    }
}
