package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.widget.CompoundButton;
import android.widget.TextView;

/* renamed from: h1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0183h1 {
    public Parcelable a;
    public Object b;
    public boolean c;
    public boolean d;
    public boolean e;
    public final Object f;

    public /* synthetic */ C0183h1(TextView textView) {
        this.a = null;
        this.b = null;
        this.c = false;
        this.d = false;
        this.f = textView;
    }

    public void a() {
        CompoundButton compoundButton = (CompoundButton) this.f;
        Drawable a = AbstractC0290l5.a(compoundButton);
        if (a != null) {
            if (this.c || this.d) {
                Drawable mutate = a.mutate();
                if (this.c) {
                    B7.h(mutate, (ColorStateList) this.a);
                }
                if (this.d) {
                    B7.i(mutate, (PorterDuff.Mode) this.b);
                }
                if (mutate.isStateful()) {
                    mutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(mutate);
            }
        }
    }

    public void b() {
        C0157g1 c0157g1 = (C0157g1) this.f;
        Drawable checkMarkDrawable = c0157g1.getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            if (this.c || this.d) {
                Drawable mutate = checkMarkDrawable.mutate();
                if (this.c) {
                    B7.h(mutate, (ColorStateList) this.a);
                }
                if (this.d) {
                    B7.i(mutate, (PorterDuff.Mode) this.b);
                }
                if (mutate.isStateful()) {
                    mutate.setState(c0157g1.getDrawableState());
                }
                c0157g1.setCheckMarkDrawable(mutate);
            }
        }
    }

    public Bundle c(String str) {
        if (!this.d) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        Bundle bundle = (Bundle) this.a;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.getBundle(str);
        Bundle bundle3 = (Bundle) this.a;
        if (bundle3 != null) {
            bundle3.remove(str);
        }
        Bundle bundle4 = (Bundle) this.a;
        if (bundle4 == null || bundle4.isEmpty()) {
            this.a = null;
        }
        return bundle2;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005f A[Catch: all -> 0x003f, TryCatch #1 {all -> 0x003f, blocks: (B:3:0x0026, B:5:0x002d, B:8:0x0033, B:9:0x0058, B:11:0x005f, B:12:0x0066, B:14:0x006d, B:21:0x0041, B:23:0x0047, B:25:0x004d), top: B:2:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006d A[Catch: all -> 0x003f, TRY_LEAVE, TryCatch #1 {all -> 0x003f, blocks: (B:3:0x0026, B:5:0x002d, B:8:0x0033, B:9:0x0058, B:11:0x005f, B:12:0x0066, B:14:0x006d, B:21:0x0041, B:23:0x0047, B:25:0x004d), top: B:2:0x0026 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d(android.util.AttributeSet r10, int r11) {
        /*
            r9 = this;
            java.lang.Object r9 = r9.f
            android.widget.CompoundButton r9 = (android.widget.CompoundButton) r9
            android.content.Context r0 = r9.getContext()
            int[] r2 = defpackage.Zf.m
            t2 r7 = defpackage.C0491t2.q(r0, r10, r2, r11)
            java.lang.Object r0 = r7.a
            r8 = r0
            android.content.res.TypedArray r8 = (android.content.res.TypedArray) r8
            android.content.Context r1 = r9.getContext()
            java.util.WeakHashMap r0 = defpackage.AbstractC0205hn.a
            java.lang.Object r0 = r7.a
            r4 = r0
            android.content.res.TypedArray r4 = (android.content.res.TypedArray) r4
            r6 = 0
            r0 = r9
            r3 = r10
            r5 = r11
            defpackage.AbstractC0076cn.d(r0, r1, r2, r3, r4, r5, r6)
            r10 = 1
            boolean r11 = r8.hasValue(r10)     // Catch: java.lang.Throwable -> L3f
            r0 = 0
            if (r11 == 0) goto L41
            int r10 = r8.getResourceId(r10, r0)     // Catch: java.lang.Throwable -> L3f
            if (r10 == 0) goto L41
            android.content.Context r11 = r9.getContext()     // Catch: java.lang.Throwable -> L3f android.content.res.Resources.NotFoundException -> L41
            android.graphics.drawable.Drawable r10 = defpackage.C6.n(r11, r10)     // Catch: java.lang.Throwable -> L3f android.content.res.Resources.NotFoundException -> L41
            r9.setButtonDrawable(r10)     // Catch: java.lang.Throwable -> L3f android.content.res.Resources.NotFoundException -> L41
            goto L58
        L3f:
            r9 = move-exception
            goto L7e
        L41:
            boolean r10 = r8.hasValue(r0)     // Catch: java.lang.Throwable -> L3f
            if (r10 == 0) goto L58
            int r10 = r8.getResourceId(r0, r0)     // Catch: java.lang.Throwable -> L3f
            if (r10 == 0) goto L58
            android.content.Context r11 = r9.getContext()     // Catch: java.lang.Throwable -> L3f
            android.graphics.drawable.Drawable r10 = defpackage.C6.n(r11, r10)     // Catch: java.lang.Throwable -> L3f
            r9.setButtonDrawable(r10)     // Catch: java.lang.Throwable -> L3f
        L58:
            r10 = 2
            boolean r11 = r8.hasValue(r10)     // Catch: java.lang.Throwable -> L3f
            if (r11 == 0) goto L66
            android.content.res.ColorStateList r10 = r7.g(r10)     // Catch: java.lang.Throwable -> L3f
            defpackage.AbstractC0264k5.c(r9, r10)     // Catch: java.lang.Throwable -> L3f
        L66:
            r10 = 3
            boolean r11 = r8.hasValue(r10)     // Catch: java.lang.Throwable -> L3f
            if (r11 == 0) goto L7a
            r11 = -1
            int r10 = r8.getInt(r10, r11)     // Catch: java.lang.Throwable -> L3f
            r11 = 0
            android.graphics.PorterDuff$Mode r10 = defpackage.D7.b(r10, r11)     // Catch: java.lang.Throwable -> L3f
            defpackage.AbstractC0264k5.d(r9, r10)     // Catch: java.lang.Throwable -> L3f
        L7a:
            r7.r()
            return
        L7e:
            r7.r()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0183h1.d(android.util.AttributeSet, int):void");
    }

    public void e(String str, InterfaceC0606xh interfaceC0606xh) {
        Object obj;
        C0481sh c0481sh = (C0481sh) this.f;
        C0406ph a = c0481sh.a(str);
        if (a != null) {
            obj = a.b;
        } else {
            C0406ph c0406ph = new C0406ph(str, interfaceC0606xh);
            c0481sh.d++;
            C0406ph c0406ph2 = c0481sh.b;
            if (c0406ph2 == null) {
                c0481sh.a = c0406ph;
                c0481sh.b = c0406ph;
            } else {
                c0406ph2.c = c0406ph;
                c0406ph.d = c0406ph2;
                c0481sh.b = c0406ph;
            }
            obj = null;
        }
        if (((InterfaceC0606xh) obj) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    public C0183h1() {
        this.f = new C0481sh();
        this.e = true;
    }
}
