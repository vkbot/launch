package com.google.android.material.theme;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.button.MaterialButton;
import com.omoda.launcher.R;
import defpackage.AbstractC0152fm;
import defpackage.AbstractC0264k5;
import defpackage.AbstractC0348nb;
import defpackage.C0054c1;
import defpackage.C0080d1;
import defpackage.C0131f1;
import defpackage.C0287l2;
import defpackage.C0298ld;
import defpackage.C0466s2;
import defpackage.C0627yd;
import defpackage.Gd;
import defpackage.L1;
import defpackage.Yf;

/* loaded from: classes.dex */
public class MaterialComponentsViewInflater extends C0466s2 {
    @Override // defpackage.C0466s2
    public final C0054c1 a(Context context, AttributeSet attributeSet) {
        return new C0298ld(context, attributeSet);
    }

    @Override // defpackage.C0466s2
    public final C0080d1 b(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // defpackage.C0466s2
    public final C0131f1 c(Context context, AttributeSet attributeSet) {
        return new C0627yd(context, attributeSet);
    }

    /* JADX WARN: Type inference failed for: r7v1, types: [Cd, L1, android.widget.CompoundButton, android.view.View] */
    @Override // defpackage.C0466s2
    public final L1 d(Context context, AttributeSet attributeSet) {
        ?? l1 = new L1(AbstractC0152fm.R(context, attributeSet, R.attr.radioButtonStyle, R.style.Widget_MaterialComponents_CompoundButton_RadioButton), attributeSet);
        Context context2 = l1.getContext();
        TypedArray Q = AbstractC0348nb.Q(context2, attributeSet, Yf.o, R.attr.radioButtonStyle, R.style.Widget_MaterialComponents_CompoundButton_RadioButton, new int[0]);
        if (Q.hasValue(0)) {
            AbstractC0264k5.c(l1, AbstractC0348nb.B(context2, Q, 0));
        }
        l1.f = Q.getBoolean(1, false);
        Q.recycle();
        return l1;
    }

    @Override // defpackage.C0466s2
    public final C0287l2 e(Context context, AttributeSet attributeSet) {
        C0287l2 c0287l2 = new C0287l2(AbstractC0152fm.R(context, attributeSet, android.R.attr.textViewStyle, 0), attributeSet, android.R.attr.textViewStyle);
        Context context2 = c0287l2.getContext();
        if (AbstractC0152fm.I(context2, R.attr.textAppearanceLineHeightEnabled, true)) {
            Resources.Theme theme = context2.getTheme();
            int[] iArr = Yf.r;
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, android.R.attr.textViewStyle, 0);
            int g = Gd.g(context2, obtainStyledAttributes, 1, 2);
            obtainStyledAttributes.recycle();
            if (g == -1) {
                TypedArray obtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, android.R.attr.textViewStyle, 0);
                int resourceId = obtainStyledAttributes2.getResourceId(0, -1);
                obtainStyledAttributes2.recycle();
                if (resourceId != -1) {
                    TypedArray obtainStyledAttributes3 = theme.obtainStyledAttributes(resourceId, Yf.q);
                    int g2 = Gd.g(c0287l2.getContext(), obtainStyledAttributes3, 1, 2);
                    obtainStyledAttributes3.recycle();
                    if (g2 >= 0) {
                        c0287l2.setLineHeight(g2);
                    }
                }
            }
        }
        return c0287l2;
    }
}
