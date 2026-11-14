package defpackage;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.b;
import com.omoda.launcher.R;
import java.io.PrintWriter;

/* renamed from: p7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class DialogInterfaceOnCancelListenerC0396p7 extends AbstractComponentCallbacksC0598x9 implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    public final DialogInterfaceOnCancelListenerC0318m7 R;
    public final DialogInterfaceOnDismissListenerC0344n7 S;
    public int T;
    public int U;
    public boolean V;
    public boolean W;
    public int X;
    public boolean Y;
    public final L Z;
    public Dialog a0;
    public boolean b0;
    public boolean c0;
    public boolean d0;

    public DialogInterfaceOnCancelListenerC0396p7() {
        new J2(5, this);
        this.R = new DialogInterfaceOnCancelListenerC0318m7(this);
        this.S = new DialogInterfaceOnDismissListenerC0344n7(this);
        this.T = 0;
        this.U = 0;
        this.V = true;
        this.W = true;
        this.X = -1;
        this.Z = new L(9, this);
        this.d0 = false;
    }

    public Dialog B() {
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new Dialog(w(), this.U);
    }

    @Override // defpackage.AbstractComponentCallbacksC0598x9
    public final AbstractC0348nb e() {
        return new C0370o7(this, new C0548v9(this));
    }

    @Override // defpackage.AbstractComponentCallbacksC0598x9
    public final void l(AbstractActivityC0028b1 abstractActivityC0028b1) {
        super.l(abstractActivityC0028b1);
        this.N.d(this.Z);
        this.c0 = false;
    }

    @Override // defpackage.AbstractComponentCallbacksC0598x9
    public void m(Bundle bundle) {
        super.m(bundle);
        new Handler();
        this.W = this.w == 0;
        if (bundle != null) {
            this.T = bundle.getInt("android:style", 0);
            this.U = bundle.getInt("android:theme", 0);
            this.V = bundle.getBoolean("android:cancelable", true);
            this.W = bundle.getBoolean("android:showsDialog", this.W);
            this.X = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // defpackage.AbstractComponentCallbacksC0598x9
    public final void o() {
        this.C = true;
        Dialog dialog = this.a0;
        if (dialog != null) {
            this.b0 = true;
            dialog.setOnDismissListener(null);
            this.a0.dismiss();
            if (!this.c0) {
                onDismiss(this.a0);
            }
            this.a0 = null;
            this.d0 = false;
        }
    }

    public void onCancel(DialogInterface dialogInterface) {
    }

    public void onDismiss(DialogInterface dialogInterface) {
        if (this.b0) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
        }
        if (this.c0) {
            return;
        }
        this.c0 = true;
        Dialog dialog = this.a0;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.a0.dismiss();
        }
        this.b0 = true;
        if (this.X >= 0) {
            J9 j = j();
            int i = this.X;
            if (i < 0) {
                throw new IllegalArgumentException(AbstractC0407pi.h("Bad id: ", i));
            }
            j.v(new I9(j, i), false);
            this.X = -1;
            return;
        }
        C0133f3 c0133f3 = new C0133f3(j());
        J9 j9 = this.r;
        if (j9 != null && j9 != c0133f3.p) {
            throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + toString() + " is already attached to a FragmentManager.");
        }
        c0133f3.b(new O9(3, this));
        if (c0133f3.q) {
            throw new IllegalStateException("commit already called");
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Commit: " + c0133f3);
            PrintWriter printWriter = new PrintWriter(new Pc());
            c0133f3.d("  ", printWriter, true);
            printWriter.close();
        }
        c0133f3.q = true;
        boolean z = c0133f3.g;
        J9 j92 = c0133f3.p;
        if (z) {
            c0133f3.r = j92.i.getAndIncrement();
        } else {
            c0133f3.r = -1;
        }
        j92.v(c0133f3, true);
    }

    @Override // defpackage.AbstractComponentCallbacksC0598x9
    public final void p() {
        this.C = true;
        if (!this.c0) {
            this.c0 = true;
        }
        L l = this.Z;
        b bVar = this.N;
        bVar.getClass();
        b.a("removeObserver");
        Ec ec = (Ec) bVar.b.b(l);
        if (ec == null) {
            return;
        }
        ec.d();
        ec.c(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0046 A[Catch: all -> 0x004e, TryCatch #0 {all -> 0x004e, blocks: (B:10:0x001a, B:12:0x0026, B:18:0x003e, B:20:0x0046, B:21:0x0050, B:23:0x0030, B:25:0x0036, B:26:0x003b, B:27:0x0068), top: B:9:0x001a }] */
    @Override // defpackage.AbstractComponentCallbacksC0598x9
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.LayoutInflater q(android.os.Bundle r8) {
        /*
            r7 = this;
            android.view.LayoutInflater r8 = super.q(r8)
            boolean r0 = r7.W
            r1 = 2
            java.lang.String r2 = "FragmentManager"
            if (r0 == 0) goto L9a
            boolean r3 = r7.Y
            if (r3 == 0) goto L11
            goto L9a
        L11:
            if (r0 != 0) goto L14
            goto L71
        L14:
            boolean r0 = r7.d0
            if (r0 != 0) goto L71
            r0 = 0
            r3 = 1
            r7.Y = r3     // Catch: java.lang.Throwable -> L4e
            android.app.Dialog r4 = r7.B()     // Catch: java.lang.Throwable -> L4e
            r7.a0 = r4     // Catch: java.lang.Throwable -> L4e
            boolean r5 = r7.W     // Catch: java.lang.Throwable -> L4e
            if (r5 == 0) goto L68
            int r5 = r7.T     // Catch: java.lang.Throwable -> L4e
            if (r5 == r3) goto L3b
            if (r5 == r1) goto L3b
            r6 = 3
            if (r5 == r6) goto L30
            goto L3e
        L30:
            android.view.Window r5 = r4.getWindow()     // Catch: java.lang.Throwable -> L4e
            if (r5 == 0) goto L3b
            r6 = 24
            r5.addFlags(r6)     // Catch: java.lang.Throwable -> L4e
        L3b:
            r4.requestWindowFeature(r3)     // Catch: java.lang.Throwable -> L4e
        L3e:
            android.content.Context r4 = r7.h()     // Catch: java.lang.Throwable -> L4e
            boolean r5 = r4 instanceof android.app.Activity     // Catch: java.lang.Throwable -> L4e
            if (r5 == 0) goto L50
            android.app.Dialog r5 = r7.a0     // Catch: java.lang.Throwable -> L4e
            android.app.Activity r4 = (android.app.Activity) r4     // Catch: java.lang.Throwable -> L4e
            r5.setOwnerActivity(r4)     // Catch: java.lang.Throwable -> L4e
            goto L50
        L4e:
            r8 = move-exception
            goto L6e
        L50:
            android.app.Dialog r4 = r7.a0     // Catch: java.lang.Throwable -> L4e
            boolean r5 = r7.V     // Catch: java.lang.Throwable -> L4e
            r4.setCancelable(r5)     // Catch: java.lang.Throwable -> L4e
            android.app.Dialog r4 = r7.a0     // Catch: java.lang.Throwable -> L4e
            m7 r5 = r7.R     // Catch: java.lang.Throwable -> L4e
            r4.setOnCancelListener(r5)     // Catch: java.lang.Throwable -> L4e
            android.app.Dialog r4 = r7.a0     // Catch: java.lang.Throwable -> L4e
            n7 r5 = r7.S     // Catch: java.lang.Throwable -> L4e
            r4.setOnDismissListener(r5)     // Catch: java.lang.Throwable -> L4e
            r7.d0 = r3     // Catch: java.lang.Throwable -> L4e
            goto L6b
        L68:
            r3 = 0
            r7.a0 = r3     // Catch: java.lang.Throwable -> L4e
        L6b:
            r7.Y = r0
            goto L71
        L6e:
            r7.Y = r0
            throw r8
        L71:
            boolean r0 = android.util.Log.isLoggable(r2, r1)
            if (r0 == 0) goto L8d
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "get layout inflater for DialogFragment "
            r0.<init>(r1)
            r0.append(r7)
            java.lang.String r1 = " from dialog context"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            android.util.Log.d(r2, r0)
        L8d:
            android.app.Dialog r7 = r7.a0
            if (r7 == 0) goto L99
            android.content.Context r7 = r7.getContext()
            android.view.LayoutInflater r8 = r8.cloneInContext(r7)
        L99:
            return r8
        L9a:
            boolean r0 = android.util.Log.isLoggable(r2, r1)
            if (r0 == 0) goto Ld5
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "getting layout inflater for DialogFragment "
            r0.<init>(r1)
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            boolean r7 = r7.W
            if (r7 != 0) goto Lc4
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r1 = "mShowsDialog = false: "
            r7.<init>(r1)
            r7.append(r0)
            java.lang.String r7 = r7.toString()
            android.util.Log.d(r2, r7)
            goto Ld5
        Lc4:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r1 = "mCreatingDialog = true: "
            r7.<init>(r1)
            r7.append(r0)
            java.lang.String r7 = r7.toString()
            android.util.Log.d(r2, r7)
        Ld5:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.DialogInterfaceOnCancelListenerC0396p7.q(android.os.Bundle):android.view.LayoutInflater");
    }

    @Override // defpackage.AbstractComponentCallbacksC0598x9
    public void r(Bundle bundle) {
        Dialog dialog = this.a0;
        if (dialog != null) {
            Bundle onSaveInstanceState = dialog.onSaveInstanceState();
            onSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        int i = this.T;
        if (i != 0) {
            bundle.putInt("android:style", i);
        }
        int i2 = this.U;
        if (i2 != 0) {
            bundle.putInt("android:theme", i2);
        }
        boolean z = this.V;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.W;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i3 = this.X;
        if (i3 != -1) {
            bundle.putInt("android:backStackId", i3);
        }
    }

    @Override // defpackage.AbstractComponentCallbacksC0598x9
    public void s() {
        this.C = true;
        Dialog dialog = this.a0;
        if (dialog != null) {
            this.b0 = false;
            dialog.show();
            View decorView = this.a0.getWindow().getDecorView();
            AbstractC0348nb.r(decorView, "<this>");
            decorView.setTag(R.id.view_tree_lifecycle_owner, this);
            decorView.setTag(R.id.view_tree_view_model_store_owner, this);
            decorView.setTag(R.id.view_tree_saved_state_registry_owner, this);
        }
    }

    @Override // defpackage.AbstractComponentCallbacksC0598x9
    public void t() {
        this.C = true;
        Dialog dialog = this.a0;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // defpackage.AbstractComponentCallbacksC0598x9
    public final void u(Bundle bundle) {
        Bundle bundle2;
        this.C = true;
        if (this.a0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.a0.onRestoreInstanceState(bundle2);
    }

    @Override // defpackage.AbstractComponentCallbacksC0598x9
    public final void v(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.v(layoutInflater, viewGroup, bundle);
        if (this.E != null || this.a0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.a0.onRestoreInstanceState(bundle2);
    }
}
