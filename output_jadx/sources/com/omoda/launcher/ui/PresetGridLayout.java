package com.omoda.launcher.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import defpackage.AbstractC0348nb;

/* loaded from: classes.dex */
public final class PresetGridLayout extends ViewGroup {
    public int a;
    public int b;
    public int c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PresetGridLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        AbstractC0348nb.r(context, "context");
        this.a = 1;
    }

    public final int getColumns() {
        int childCount = getChildCount();
        int i = this.a;
        int i2 = ((childCount + i) - 1) / i;
        if (i2 < 1) {
            return 1;
        }
        return i2;
    }

    public final int getPanelWidth() {
        return getColumns() * this.b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int min = ((i4 - i2) - (Math.min(getChildCount(), this.a) * this.d)) / 2;
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            int i6 = i5 / this.a;
            int i7 = this.b;
            int measuredWidth = ((i7 - childAt.getMeasuredWidth()) / 2) + (i6 * i7);
            int i8 = ((i5 % this.a) * this.d) + min;
            childAt.layout(measuredWidth, i8, childAt.getMeasuredWidth() + measuredWidth, childAt.getMeasuredHeight() + i8);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        int i3 = 0;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            measureChild(childAt, i, i2);
            i3 = Math.max(i3, childAt.getMeasuredHeight());
        }
        this.d = i3 + this.c;
        setMeasuredDimension(getPanelWidth(), View.getDefaultSize(getSuggestedMinimumHeight(), i2));
    }
}
