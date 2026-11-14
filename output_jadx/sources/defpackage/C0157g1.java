package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;

/* renamed from: g1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0157g1 extends CheckedTextView {
    public final C0183h1 a;
    public final C0614y0 b;
    public final C0235j2 c;
    public E1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0089 A[Catch: all -> 0x0069, TryCatch #1 {all -> 0x0069, blocks: (B:3:0x0050, B:5:0x0057, B:8:0x005d, B:9:0x0082, B:11:0x0089, B:12:0x0090, B:14:0x0097, B:21:0x006b, B:23:0x0071, B:25:0x0077), top: B:2:0x0050 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0097 A[Catch: all -> 0x0069, TRY_LEAVE, TryCatch #1 {all -> 0x0069, blocks: (B:3:0x0050, B:5:0x0057, B:8:0x005d, B:9:0x0082, B:11:0x0089, B:12:0x0090, B:14:0x0097, B:21:0x006b, B:23:0x0071, B:25:0x0077), top: B:2:0x0050 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0157g1(android.content.Context r10, android.util.AttributeSet r11) {
        /*
            r9 = this;
            defpackage.AbstractC0459rk.a(r10)
            r7 = 2130903229(0x7f0300bd, float:1.741327E38)
            r9.<init>(r10, r11, r7)
            android.content.Context r10 = r9.getContext()
            defpackage.AbstractC0124ek.a(r9, r10)
            j2 r10 = new j2
            r10.<init>(r9)
            r9.c = r10
            r10.f(r11, r7)
            r10.b()
            y0 r10 = new y0
            r10.<init>(r9)
            r9.b = r10
            r10.k(r11, r7)
            h1 r10 = new h1
            r10.<init>(r9)
            r9.a = r10
            android.content.Context r10 = r9.getContext()
            int[] r2 = defpackage.Zf.l
            t2 r10 = defpackage.C0491t2.q(r10, r11, r2, r7)
            java.lang.Object r0 = r10.a
            r8 = r0
            android.content.res.TypedArray r8 = (android.content.res.TypedArray) r8
            android.content.Context r1 = r9.getContext()
            java.util.WeakHashMap r0 = defpackage.AbstractC0205hn.a
            java.lang.Object r0 = r10.a
            r4 = r0
            android.content.res.TypedArray r4 = (android.content.res.TypedArray) r4
            r6 = 0
            r0 = r9
            r3 = r11
            r5 = r7
            defpackage.AbstractC0076cn.d(r0, r1, r2, r3, r4, r5, r6)
            r0 = 1
            boolean r1 = r8.hasValue(r0)     // Catch: java.lang.Throwable -> L69
            r2 = 0
            if (r1 == 0) goto L6b
            int r0 = r8.getResourceId(r0, r2)     // Catch: java.lang.Throwable -> L69
            if (r0 == 0) goto L6b
            android.content.Context r1 = r9.getContext()     // Catch: java.lang.Throwable -> L69 android.content.res.Resources.NotFoundException -> L6b
            android.graphics.drawable.Drawable r0 = defpackage.C6.n(r1, r0)     // Catch: java.lang.Throwable -> L69 android.content.res.Resources.NotFoundException -> L6b
            r9.setCheckMarkDrawable(r0)     // Catch: java.lang.Throwable -> L69 android.content.res.Resources.NotFoundException -> L6b
            goto L82
        L69:
            r9 = move-exception
            goto Laf
        L6b:
            boolean r0 = r8.hasValue(r2)     // Catch: java.lang.Throwable -> L69
            if (r0 == 0) goto L82
            int r0 = r8.getResourceId(r2, r2)     // Catch: java.lang.Throwable -> L69
            if (r0 == 0) goto L82
            android.content.Context r1 = r9.getContext()     // Catch: java.lang.Throwable -> L69
            android.graphics.drawable.Drawable r0 = defpackage.C6.n(r1, r0)     // Catch: java.lang.Throwable -> L69
            r9.setCheckMarkDrawable(r0)     // Catch: java.lang.Throwable -> L69
        L82:
            r0 = 2
            boolean r1 = r8.hasValue(r0)     // Catch: java.lang.Throwable -> L69
            if (r1 == 0) goto L90
            android.content.res.ColorStateList r0 = r10.g(r0)     // Catch: java.lang.Throwable -> L69
            r9.setCheckMarkTintList(r0)     // Catch: java.lang.Throwable -> L69
        L90:
            r0 = 3
            boolean r1 = r8.hasValue(r0)     // Catch: java.lang.Throwable -> L69
            if (r1 == 0) goto La4
            r1 = -1
            int r0 = r8.getInt(r0, r1)     // Catch: java.lang.Throwable -> L69
            r1 = 0
            android.graphics.PorterDuff$Mode r0 = defpackage.D7.b(r0, r1)     // Catch: java.lang.Throwable -> L69
            r9.setCheckMarkTintMode(r0)     // Catch: java.lang.Throwable -> L69
        La4:
            r10.r()
            E1 r9 = r9.getEmojiTextViewHelper()
            r9.a(r11, r7)
            return
        Laf:
            r10.r()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0157g1.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    private E1 getEmojiTextViewHelper() {
        if (this.d == null) {
            this.d = new E1(this);
        }
        return this.d;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0235j2 c0235j2 = this.c;
        if (c0235j2 != null) {
            c0235j2.b();
        }
        C0614y0 c0614y0 = this.b;
        if (c0614y0 != null) {
            c0614y0.a();
        }
        C0183h1 c0183h1 = this.a;
        if (c0183h1 != null) {
            c0183h1.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return super.getCustomSelectionActionModeCallback();
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0614y0 c0614y0 = this.b;
        if (c0614y0 != null) {
            return c0614y0.h();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0614y0 c0614y0 = this.b;
        if (c0614y0 != null) {
            return c0614y0.i();
        }
        return null;
    }

    public ColorStateList getSupportCheckMarkTintList() {
        C0183h1 c0183h1 = this.a;
        if (c0183h1 != null) {
            return (ColorStateList) c0183h1.a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        C0183h1 c0183h1 = this.a;
        if (c0183h1 != null) {
            return (PorterDuff.Mode) c0183h1.b;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.c.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.c.e();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        AbstractC0152fm.x(editorInfo, onCreateInputConnection, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().b(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0614y0 c0614y0 = this.b;
        if (c0614y0 != null) {
            c0614y0.m();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0614y0 c0614y0 = this.b;
        if (c0614y0 != null) {
            c0614y0.n(i);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        C0183h1 c0183h1 = this.a;
        if (c0183h1 != null) {
            if (c0183h1.e) {
                c0183h1.e = false;
            } else {
                c0183h1.e = true;
                c0183h1.b();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C0235j2 c0235j2 = this.c;
        if (c0235j2 != null) {
            c0235j2.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C0235j2 c0235j2 = this.c;
        if (c0235j2 != null) {
            c0235j2.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().c(z);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0614y0 c0614y0 = this.b;
        if (c0614y0 != null) {
            c0614y0.s(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0614y0 c0614y0 = this.b;
        if (c0614y0 != null) {
            c0614y0.t(mode);
        }
    }

    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        C0183h1 c0183h1 = this.a;
        if (c0183h1 != null) {
            c0183h1.a = colorStateList;
            c0183h1.c = true;
            c0183h1.b();
        }
    }

    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        C0183h1 c0183h1 = this.a;
        if (c0183h1 != null) {
            c0183h1.b = mode;
            c0183h1.d = true;
            c0183h1.b();
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C0235j2 c0235j2 = this.c;
        c0235j2.i(colorStateList);
        c0235j2.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C0235j2 c0235j2 = this.c;
        c0235j2.j(mode);
        c0235j2.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0235j2 c0235j2 = this.c;
        if (c0235j2 != null) {
            c0235j2.g(context, i);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(C6.n(getContext(), i));
    }
}
