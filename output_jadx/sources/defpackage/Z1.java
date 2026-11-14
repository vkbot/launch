package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import com.omoda.launcher.R;

/* loaded from: classes.dex */
public final class Z1 extends Ac implements InterfaceC0029b2 {
    public CharSequence A;
    public W1 B;
    public final Rect C;
    public int D;
    public final /* synthetic */ C0055c2 E;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Z1(C0055c2 c0055c2, Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.spinnerStyle);
        this.E = c0055c2;
        this.C = new Rect();
        this.o = c0055c2;
        this.y = true;
        this.z.setFocusable(true);
        this.p = new X1(0, this);
    }

    @Override // defpackage.InterfaceC0029b2
    public final CharSequence b() {
        return this.A;
    }

    @Override // defpackage.InterfaceC0029b2
    public final void f(int i, int i2) {
        ViewTreeObserver viewTreeObserver;
        J1 j1 = this.z;
        boolean isShowing = j1.isShowing();
        s();
        this.z.setInputMethodMode(2);
        h();
        K7 k7 = this.c;
        k7.setChoiceMode(1);
        T1.d(k7, i);
        T1.c(k7, i2);
        C0055c2 c0055c2 = this.E;
        int selectedItemPosition = c0055c2.getSelectedItemPosition();
        K7 k72 = this.c;
        if (j1.isShowing() && k72 != null) {
            k72.setListSelectionHidden(false);
            k72.setSelection(selectedItemPosition);
            if (k72.getChoiceMode() != 0) {
                k72.setItemChecked(selectedItemPosition, true);
            }
        }
        if (isShowing || (viewTreeObserver = c0055c2.getViewTreeObserver()) == null) {
            return;
        }
        R1 r1 = new R1(1, this);
        viewTreeObserver.addOnGlobalLayoutListener(r1);
        this.z.setOnDismissListener(new Y1(this, r1));
    }

    @Override // defpackage.InterfaceC0029b2
    public final void g(CharSequence charSequence) {
        this.A = charSequence;
    }

    @Override // defpackage.Ac, defpackage.InterfaceC0029b2
    public final void m(ListAdapter listAdapter) {
        super.m(listAdapter);
        this.B = (W1) listAdapter;
    }

    @Override // defpackage.InterfaceC0029b2
    public final void n(int i) {
        this.D = i;
    }

    public final void s() {
        int i;
        J1 j1 = this.z;
        Drawable background = j1.getBackground();
        C0055c2 c0055c2 = this.E;
        if (background != null) {
            background.getPadding(c0055c2.h);
            boolean a = Dn.a(c0055c2);
            Rect rect = c0055c2.h;
            i = a ? rect.right : -rect.left;
        } else {
            Rect rect2 = c0055c2.h;
            rect2.right = 0;
            rect2.left = 0;
            i = 0;
        }
        int paddingLeft = c0055c2.getPaddingLeft();
        int paddingRight = c0055c2.getPaddingRight();
        int width = c0055c2.getWidth();
        int i2 = c0055c2.g;
        if (i2 == -2) {
            int a2 = c0055c2.a(this.B, j1.getBackground());
            int i3 = c0055c2.getContext().getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = c0055c2.h;
            int i4 = (i3 - rect3.left) - rect3.right;
            if (a2 > i4) {
                a2 = i4;
            }
            r(Math.max(a2, (width - paddingLeft) - paddingRight));
        } else if (i2 == -1) {
            r((width - paddingLeft) - paddingRight);
        } else {
            r(i2);
        }
        this.f = Dn.a(c0055c2) ? (((width - paddingRight) - this.e) - this.D) + i : paddingLeft + this.D + i;
    }
}
