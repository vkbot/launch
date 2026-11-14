package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import defpackage.AbstractC0078d;
import defpackage.AbstractC0205hn;
import defpackage.C0212i4;
import defpackage.C0237j4;
import defpackage.F1;

/* loaded from: classes.dex */
public class CheckableImageButton extends F1 implements Checkable {
    public static final int[] g = {R.attr.state_checked};
    public boolean d;
    public boolean e;
    public boolean f;

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.omoda.launcher.R.attr.imageButtonStyle);
        this.e = true;
        this.f = true;
        AbstractC0205hn.h(this, new C0212i4(0, this));
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.d;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        return this.d ? View.mergeDrawableStates(super.onCreateDrawableState(i + 1), g) : super.onCreateDrawableState(i);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0237j4)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0237j4 c0237j4 = (C0237j4) parcelable;
        super.onRestoreInstanceState(c0237j4.a);
        setChecked(c0237j4.c);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.os.Parcelable, d, j4] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? abstractC0078d = new AbstractC0078d(super.onSaveInstanceState());
        abstractC0078d.c = this.d;
        return abstractC0078d;
    }

    public void setCheckable(boolean z) {
        if (this.e != z) {
            this.e = z;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (!this.e || this.d == z) {
            return;
        }
        this.d = z;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    public void setPressable(boolean z) {
        this.f = z;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.f) {
            super.setPressed(z);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.d);
    }
}
