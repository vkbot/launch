package defpackage;

import android.view.View;
import android.view.ViewGroup;

/* renamed from: lg, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0301lg {
    public final /* synthetic */ int a;
    public final /* synthetic */ AbstractC0353ng b;

    public /* synthetic */ C0301lg(AbstractC0353ng abstractC0353ng, int i) {
        this.a = i;
        this.b = abstractC0353ng;
    }

    public final int a(View view) {
        switch (this.a) {
            case 0:
                C0379og c0379og = (C0379og) view.getLayoutParams();
                this.b.getClass();
                return view.getRight() + ((C0379og) view.getLayoutParams()).b.right + ((ViewGroup.MarginLayoutParams) c0379og).rightMargin;
            default:
                C0379og c0379og2 = (C0379og) view.getLayoutParams();
                this.b.getClass();
                return view.getBottom() + ((C0379og) view.getLayoutParams()).b.bottom + ((ViewGroup.MarginLayoutParams) c0379og2).bottomMargin;
        }
    }

    public final int b(View view) {
        switch (this.a) {
            case 0:
                C0379og c0379og = (C0379og) view.getLayoutParams();
                this.b.getClass();
                return (view.getLeft() - ((C0379og) view.getLayoutParams()).b.left) - ((ViewGroup.MarginLayoutParams) c0379og).leftMargin;
            default:
                C0379og c0379og2 = (C0379og) view.getLayoutParams();
                this.b.getClass();
                return (view.getTop() - ((C0379og) view.getLayoutParams()).b.top) - ((ViewGroup.MarginLayoutParams) c0379og2).topMargin;
        }
    }

    public final int c() {
        switch (this.a) {
            case 0:
                AbstractC0353ng abstractC0353ng = this.b;
                return abstractC0353ng.n - abstractC0353ng.D();
            default:
                AbstractC0353ng abstractC0353ng2 = this.b;
                return abstractC0353ng2.o - abstractC0353ng2.B();
        }
    }

    public final int d() {
        switch (this.a) {
            case 0:
                return this.b.C();
            default:
                return this.b.E();
        }
    }
}
