package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;

/* renamed from: c2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0055c2 extends Spinner {
    public static final int[] i = {R.attr.spinnerMode};
    public final C0614y0 a;
    public final Context b;
    public final Q1 c;
    public SpinnerAdapter d;
    public final boolean e;
    public final InterfaceC0029b2 f;
    public int g;
    public final Rect h;

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0060, code lost:
    
        if (r7 == null) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0055c2(android.content.Context r13, android.util.AttributeSet r14) {
        /*
            r12 = this;
            r0 = 2130904023(0x7f0303d7, float:1.741488E38)
            r12.<init>(r13, r14, r0)
            android.graphics.Rect r1 = new android.graphics.Rect
            r1.<init>()
            r12.h = r1
            android.content.Context r1 = r12.getContext()
            defpackage.AbstractC0124ek.a(r12, r1)
            int[] r1 = defpackage.Zf.v
            t2 r2 = defpackage.C0491t2.q(r13, r14, r1, r0)
            y0 r3 = new y0
            r3.<init>(r12)
            r12.a = r3
            java.lang.Object r3 = r2.a
            android.content.res.TypedArray r3 = (android.content.res.TypedArray) r3
            r4 = 4
            r5 = 0
            int r4 = r3.getResourceId(r4, r5)
            if (r4 == 0) goto L35
            R5 r6 = new R5
            r6.<init>(r13, r4)
            r12.b = r6
            goto L37
        L35:
            r12.b = r13
        L37:
            r4 = -1
            r6 = 0
            int[] r7 = defpackage.C0055c2.i     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L57
            android.content.res.TypedArray r7 = r13.obtainStyledAttributes(r14, r7, r0, r5)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L57
            boolean r8 = r7.hasValue(r5)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4e
            if (r8 == 0) goto L50
            int r4 = r7.getInt(r5, r5)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4e
            goto L50
        L4a:
            r12 = move-exception
            r6 = r7
            goto Ld5
        L4e:
            r8 = move-exception
            goto L59
        L50:
            r7.recycle()
            goto L63
        L54:
            r12 = move-exception
            goto Ld5
        L57:
            r8 = move-exception
            r7 = r6
        L59:
            java.lang.String r9 = "AppCompatSpinner"
            java.lang.String r10 = "Could not read android:spinnerMode"
            android.util.Log.i(r9, r10, r8)     // Catch: java.lang.Throwable -> L4a
            if (r7 == 0) goto L63
            goto L50
        L63:
            r7 = 2
            r8 = 1
            if (r4 == 0) goto L9d
            if (r4 == r8) goto L6a
            goto Laa
        L6a:
            Z1 r4 = new Z1
            android.content.Context r9 = r12.b
            r4.<init>(r12, r9, r14)
            android.content.Context r9 = r12.b
            t2 r1 = defpackage.C0491t2.q(r9, r14, r1, r0)
            r9 = 3
            r10 = -2
            java.lang.Object r11 = r1.a
            android.content.res.TypedArray r11 = (android.content.res.TypedArray) r11
            int r9 = r11.getLayoutDimension(r9, r10)
            r12.g = r9
            android.graphics.drawable.Drawable r9 = r1.h(r8)
            r4.j(r9)
            java.lang.String r7 = r3.getString(r7)
            r4.A = r7
            r1.r()
            r12.f = r4
            Q1 r1 = new Q1
            r1.<init>(r12, r12, r4)
            r12.c = r1
            goto Laa
        L9d:
            V1 r1 = new V1
            r1.<init>(r12)
            r12.f = r1
            java.lang.String r4 = r3.getString(r7)
            r1.c = r4
        Laa:
            java.lang.CharSequence[] r1 = r3.getTextArray(r5)
            if (r1 == 0) goto Lc1
            android.widget.ArrayAdapter r3 = new android.widget.ArrayAdapter
            r4 = 17367048(0x1090008, float:2.5162948E-38)
            r3.<init>(r13, r4, r1)
            r13 = 2131427448(0x7f0b0078, float:1.8476513E38)
            r3.setDropDownViewResource(r13)
            r12.setAdapter(r3)
        Lc1:
            r2.r()
            r12.e = r8
            android.widget.SpinnerAdapter r13 = r12.d
            if (r13 == 0) goto Lcf
            r12.setAdapter(r13)
            r12.d = r6
        Lcf:
            y0 r12 = r12.a
            r12.k(r14, r0)
            return
        Ld5:
            if (r6 == 0) goto Lda
            r6.recycle()
        Lda:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0055c2.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public final int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i2 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i3 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i2) {
                view = null;
                i2 = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i3 = Math.max(i3, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return i3;
        }
        Rect rect = this.h;
        drawable.getPadding(rect);
        return i3 + rect.left + rect.right;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            c0614y0.a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        InterfaceC0029b2 interfaceC0029b2 = this.f;
        return interfaceC0029b2 != null ? interfaceC0029b2.d() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        InterfaceC0029b2 interfaceC0029b2 = this.f;
        return interfaceC0029b2 != null ? interfaceC0029b2.i() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f != null ? this.g : super.getDropDownWidth();
    }

    public final InterfaceC0029b2 getInternalPopup() {
        return this.f;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        InterfaceC0029b2 interfaceC0029b2 = this.f;
        return interfaceC0029b2 != null ? interfaceC0029b2.l() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.b;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        InterfaceC0029b2 interfaceC0029b2 = this.f;
        return interfaceC0029b2 != null ? interfaceC0029b2.b() : super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            return c0614y0.h();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            return c0614y0.i();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        InterfaceC0029b2 interfaceC0029b2 = this.f;
        if (interfaceC0029b2 == null || !interfaceC0029b2.a()) {
            return;
        }
        interfaceC0029b2.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f == null || View.MeasureSpec.getMode(i2) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i2)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        C0003a2 c0003a2 = (C0003a2) parcelable;
        super.onRestoreInstanceState(c0003a2.getSuperState());
        if (!c0003a2.a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new R1(0, this));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.view.View$BaseSavedState, a2, android.os.Parcelable] */
    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? baseSavedState = new View.BaseSavedState(super.onSaveInstanceState());
        InterfaceC0029b2 interfaceC0029b2 = this.f;
        baseSavedState.a = interfaceC0029b2 != null && interfaceC0029b2.a();
        return baseSavedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        Q1 q1 = this.c;
        if (q1 == null || !q1.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean performClick() {
        InterfaceC0029b2 interfaceC0029b2 = this.f;
        if (interfaceC0029b2 == null) {
            return super.performClick();
        }
        if (interfaceC0029b2.a()) {
            return true;
        }
        this.f.f(T1.b(this), T1.a(this));
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            c0614y0.m();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            c0614y0.n(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i2) {
        InterfaceC0029b2 interfaceC0029b2 = this.f;
        if (interfaceC0029b2 == null) {
            super.setDropDownHorizontalOffset(i2);
        } else {
            interfaceC0029b2.n(i2);
            interfaceC0029b2.c(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i2) {
        InterfaceC0029b2 interfaceC0029b2 = this.f;
        if (interfaceC0029b2 != null) {
            interfaceC0029b2.k(i2);
        } else {
            super.setDropDownVerticalOffset(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i2) {
        if (this.f != null) {
            this.g = i2;
        } else {
            super.setDropDownWidth(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        InterfaceC0029b2 interfaceC0029b2 = this.f;
        if (interfaceC0029b2 != null) {
            interfaceC0029b2.j(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i2) {
        setPopupBackgroundDrawable(C6.n(getPopupContext(), i2));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        InterfaceC0029b2 interfaceC0029b2 = this.f;
        if (interfaceC0029b2 != null) {
            interfaceC0029b2.g(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            c0614y0.s(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            c0614y0.t(mode);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.widget.ListAdapter, java.lang.Object, W1] */
    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.e) {
            this.d = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        InterfaceC0029b2 interfaceC0029b2 = this.f;
        if (interfaceC0029b2 != 0) {
            Context context = this.b;
            if (context == null) {
                context = getContext();
            }
            Resources.Theme theme = context.getTheme();
            ?? obj = new Object();
            obj.a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                obj.b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                U1.a((ThemedSpinnerAdapter) spinnerAdapter, theme);
            }
            interfaceC0029b2.m(obj);
        }
    }
}
