package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.b;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import androidx.lifecycle.a;
import com.omoda.launcher.R;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class F0 extends Dialog implements DialogInterface, InterfaceC0105e1, InterfaceC0039bc, InterfaceC0631yh {
    public a a;
    public final Q9 b;
    public final b c;
    public LayoutInflaterFactory2C0615y1 d;
    public final C0640z1 e;
    public final E0 f;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public F0(android.view.ContextThemeWrapper r6, int r7) {
        /*
            r5 = this;
            int r7 = i(r6, r7)
            r0 = 1
            r1 = 2130903418(0x7f03017a, float:1.7413653E38)
            if (r7 != 0) goto L19
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            android.content.res.Resources$Theme r3 = r6.getTheme()
            r3.resolveAttribute(r1, r2, r0)
            int r2 = r2.resourceId
            goto L1a
        L19:
            r2 = r7
        L1a:
            r5.<init>(r6, r2)
            Q9 r2 = new Q9
            r2.<init>(r5)
            r5.b = r2
            androidx.activity.b r2 = new androidx.activity.b
            O r3 = new O
            r4 = 7
            r3.<init>(r4, r5)
            r2.<init>(r3)
            r5.c = r2
            z1 r2 = new z1
            r2.<init>(r5)
            r5.e = r2
            l1 r2 = r5.c()
            if (r7 != 0) goto L4c
            android.util.TypedValue r7 = new android.util.TypedValue
            r7.<init>()
            android.content.res.Resources$Theme r6 = r6.getTheme()
            r6.resolveAttribute(r1, r7, r0)
            int r7 = r7.resourceId
        L4c:
            r6 = r2
            y1 r6 = (defpackage.LayoutInflaterFactory2C0615y1) r6
            r6.T = r7
            r2.e()
            E0 r6 = new E0
            android.content.Context r7 = r5.getContext()
            android.view.Window r0 = r5.getWindow()
            r6.<init>(r7, r5, r0)
            r5.f = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.F0.<init>(android.view.ContextThemeWrapper, int):void");
    }

    public static void a(F0 f0) {
        AbstractC0348nb.r(f0, "this$0");
        super.onBackPressed();
    }

    public static int i(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = (LayoutInflaterFactory2C0615y1) c();
        layoutInflaterFactory2C0615y1.w();
        ((ViewGroup) layoutInflaterFactory2C0615y1.A.findViewById(android.R.id.content)).addView(view, layoutParams);
        layoutInflaterFactory2C0615y1.m.a(layoutInflaterFactory2C0615y1.l.getCallback());
    }

    @Override // defpackage.InterfaceC0631yh
    public final C0183h1 b() {
        return (C0183h1) this.b.c;
    }

    public final AbstractC0286l1 c() {
        if (this.d == null) {
            E2 e2 = AbstractC0286l1.a;
            this.d = new LayoutInflaterFactory2C0615y1(getContext(), getWindow(), this, this);
        }
        return this.d;
    }

    @Override // defpackage.InterfaceC0039bc
    public final a d() {
        return e();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        c().f();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        getWindow().getDecorView();
        C0640z1 c0640z1 = this.e;
        if (c0640z1 == null) {
            return false;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public final a e() {
        a aVar = this.a;
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a(this);
        this.a = aVar2;
        return aVar2;
    }

    public final void f(Bundle bundle) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            AbstractC0348nb.q(onBackInvokedDispatcher, "onBackInvokedDispatcher");
            b bVar = this.c;
            bVar.getClass();
            bVar.e = onBackInvokedDispatcher;
            bVar.c(bVar.g);
        }
        this.b.b(bundle);
        e().d(Vb.ON_CREATE);
    }

    @Override // android.app.Dialog
    public final View findViewById(int i) {
        LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = (LayoutInflaterFactory2C0615y1) c();
        layoutInflaterFactory2C0615y1.w();
        return layoutInflaterFactory2C0615y1.l.findViewById(i);
    }

    public final void g(Bundle bundle) {
        c().a();
        f(bundle);
        c().e();
    }

    public final void h() {
        e().d(Vb.ON_DESTROY);
        this.a = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        c().b();
    }

    public final void j(CharSequence charSequence) {
        super.setTitle(charSequence);
        c().l(charSequence);
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        this.c.b();
    }

    @Override // android.app.Dialog
    public final void onCreate(Bundle bundle) {
        int i;
        ListAdapter listAdapter;
        View findViewById;
        g(bundle);
        E0 e0 = this.f;
        e0.b.setContentView(e0.q);
        Window window = e0.c;
        View findViewById2 = window.findViewById(R.id.parentPanel);
        View findViewById3 = findViewById2.findViewById(R.id.topPanel);
        View findViewById4 = findViewById2.findViewById(R.id.contentPanel);
        View findViewById5 = findViewById2.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById2.findViewById(R.id.customPanel);
        window.setFlags(131072, 131072);
        viewGroup.setVisibility(8);
        View findViewById6 = viewGroup.findViewById(R.id.topPanel);
        View findViewById7 = viewGroup.findViewById(R.id.contentPanel);
        View findViewById8 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup a = E0.a(findViewById6, findViewById3);
        ViewGroup a2 = E0.a(findViewById7, findViewById4);
        ViewGroup a3 = E0.a(findViewById8, findViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.scrollView);
        e0.i = nestedScrollView;
        nestedScrollView.setFocusable(false);
        e0.i.setNestedScrollingEnabled(false);
        TextView textView = (TextView) a2.findViewById(android.R.id.message);
        e0.m = textView;
        if (textView != null) {
            textView.setVisibility(8);
            e0.i.removeView(e0.m);
            if (e0.e != null) {
                ViewGroup viewGroup2 = (ViewGroup) e0.i.getParent();
                int indexOfChild = viewGroup2.indexOfChild(e0.i);
                viewGroup2.removeViewAt(indexOfChild);
                viewGroup2.addView(e0.e, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
            } else {
                a2.setVisibility(8);
            }
        }
        Button button = (Button) a3.findViewById(android.R.id.button1);
        e0.f = button;
        Z z = e0.w;
        button.setOnClickListener(z);
        if (TextUtils.isEmpty(null)) {
            e0.f.setVisibility(8);
            i = 0;
        } else {
            e0.f.setText((CharSequence) null);
            e0.f.setVisibility(0);
            i = 1;
        }
        Button button2 = (Button) a3.findViewById(android.R.id.button2);
        e0.g = button2;
        button2.setOnClickListener(z);
        if (TextUtils.isEmpty(null)) {
            e0.g.setVisibility(8);
        } else {
            e0.g.setText((CharSequence) null);
            e0.g.setVisibility(0);
            i |= 2;
        }
        Button button3 = (Button) a3.findViewById(android.R.id.button3);
        e0.h = button3;
        button3.setOnClickListener(z);
        if (TextUtils.isEmpty(null)) {
            e0.h.setVisibility(8);
        } else {
            e0.h.setText((CharSequence) null);
            e0.h.setVisibility(0);
            i |= 4;
        }
        TypedValue typedValue = new TypedValue();
        e0.a.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (i == 1) {
                Button button4 = e0.f;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button4.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button4.setLayoutParams(layoutParams);
            } else if (i == 2) {
                Button button5 = e0.g;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button5.getLayoutParams();
                layoutParams2.gravity = 1;
                layoutParams2.weight = 0.5f;
                button5.setLayoutParams(layoutParams2);
            } else if (i == 4) {
                Button button6 = e0.h;
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button6.getLayoutParams();
                layoutParams3.gravity = 1;
                layoutParams3.weight = 0.5f;
                button6.setLayoutParams(layoutParams3);
            }
        }
        if (i == 0) {
            a3.setVisibility(8);
        }
        if (e0.n != null) {
            a.addView(e0.n, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(R.id.title_template).setVisibility(8);
        } else {
            e0.k = (ImageView) window.findViewById(android.R.id.icon);
            if (TextUtils.isEmpty(e0.d) || !e0.u) {
                window.findViewById(R.id.title_template).setVisibility(8);
                e0.k.setVisibility(8);
                a.setVisibility(8);
            } else {
                TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                e0.l = textView2;
                textView2.setText(e0.d);
                Drawable drawable = e0.j;
                if (drawable != null) {
                    e0.k.setImageDrawable(drawable);
                } else {
                    e0.l.setPadding(e0.k.getPaddingLeft(), e0.k.getPaddingTop(), e0.k.getPaddingRight(), e0.k.getPaddingBottom());
                    e0.k.setVisibility(8);
                }
            }
        }
        boolean z2 = viewGroup.getVisibility() != 8;
        int i2 = (a == null || a.getVisibility() == 8) ? 0 : 1;
        boolean z3 = a3.getVisibility() != 8;
        if (!z3 && (findViewById = a2.findViewById(R.id.textSpacerNoButtons)) != null) {
            findViewById.setVisibility(0);
        }
        if (i2 != 0) {
            NestedScrollView nestedScrollView2 = e0.i;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View findViewById9 = e0.e != null ? a.findViewById(R.id.titleDividerNoCustom) : null;
            if (findViewById9 != null) {
                findViewById9.setVisibility(0);
            }
        } else {
            View findViewById10 = a2.findViewById(R.id.textSpacerNoTitle);
            if (findViewById10 != null) {
                findViewById10.setVisibility(0);
            }
        }
        AlertController$RecycleListView alertController$RecycleListView = e0.e;
        if (alertController$RecycleListView != null) {
            alertController$RecycleListView.getClass();
            if (!z3 || i2 == 0) {
                alertController$RecycleListView.setPadding(alertController$RecycleListView.getPaddingLeft(), i2 != 0 ? alertController$RecycleListView.getPaddingTop() : alertController$RecycleListView.a, alertController$RecycleListView.getPaddingRight(), z3 ? alertController$RecycleListView.getPaddingBottom() : alertController$RecycleListView.b);
            }
        }
        if (!z2) {
            View view = e0.e;
            if (view == null) {
                view = e0.i;
            }
            if (view != null) {
                int i3 = (z3 ? 2 : 0) | i2;
                View findViewById11 = window.findViewById(R.id.scrollIndicatorUp);
                View findViewById12 = window.findViewById(R.id.scrollIndicatorDown);
                WeakHashMap weakHashMap = AbstractC0205hn.a;
                Ym.d(view, i3, 3);
                if (findViewById11 != null) {
                    a2.removeView(findViewById11);
                }
                if (findViewById12 != null) {
                    a2.removeView(findViewById12);
                }
            }
        }
        AlertController$RecycleListView alertController$RecycleListView2 = e0.e;
        if (alertController$RecycleListView2 == null || (listAdapter = e0.o) == null) {
            return;
        }
        alertController$RecycleListView2.setAdapter(listAdapter);
        int i4 = e0.p;
        if (i4 > -1) {
            alertController$RecycleListView2.setItemChecked(i4, true);
            alertController$RecycleListView2.setSelection(i4);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f.i;
        if (nestedScrollView == null || !nestedScrollView.i(keyEvent)) {
            return super.onKeyDown(i, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f.i;
        if (nestedScrollView == null || !nestedScrollView.i(keyEvent)) {
            return super.onKeyUp(i, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        AbstractC0348nb.q(onSaveInstanceState, "super.onSaveInstanceState()");
        this.b.c(onSaveInstanceState);
        return onSaveInstanceState;
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        e().d(Vb.ON_RESUME);
    }

    @Override // android.app.Dialog
    public final void onStop() {
        h();
        LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = (LayoutInflaterFactory2C0615y1) c();
        layoutInflaterFactory2C0615y1.A();
        C0128eo c0128eo = layoutInflaterFactory2C0615y1.o;
        if (c0128eo != null) {
            c0128eo.J = false;
            C0612xn c0612xn = c0128eo.I;
            if (c0612xn != null) {
                c0612xn.a();
            }
        }
    }

    @Override // android.app.Dialog
    public final void setContentView(int i) {
        c().i(i);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i) {
        super.setTitle(i);
        c().l(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public final void setContentView(View view) {
        c().j(view);
    }

    @Override // android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        c().k(view, layoutParams);
    }

    @Override // android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        j(charSequence);
        E0 e0 = this.f;
        e0.d = charSequence;
        TextView textView = e0.l;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
