package com.google.android.material.datepicker;

import android.widget.LinearLayout;
import android.widget.TextView;
import com.omoda.launcher.R;
import defpackage.AbstractC0205hn;
import defpackage.Eg;
import defpackage.Om;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class b extends Eg {
    public final TextView u;
    public final MaterialCalendarGridView v;

    public b(LinearLayout linearLayout, boolean z) {
        super(linearLayout);
        TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
        this.u = textView;
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        new Om(R.id.tag_accessibility_heading, Boolean.class, 0, 28, 1).d(textView, Boolean.TRUE);
        this.v = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
        if (z) {
            return;
        }
        textView.setVisibility(8);
    }
}
