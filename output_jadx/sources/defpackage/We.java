package defpackage;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class We extends Y7 {
    public final /* synthetic */ int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ We(AbstractC0353ng abstractC0353ng, int i) {
        super(abstractC0353ng);
        this.d = i;
    }

    @Override // defpackage.Y7
    public final int b(View view) {
        switch (this.d) {
            case 0:
                C0379og c0379og = (C0379og) view.getLayoutParams();
                ((AbstractC0353ng) this.b).getClass();
                return view.getRight() + ((C0379og) view.getLayoutParams()).b.right + ((ViewGroup.MarginLayoutParams) c0379og).rightMargin;
            default:
                C0379og c0379og2 = (C0379og) view.getLayoutParams();
                ((AbstractC0353ng) this.b).getClass();
                return view.getBottom() + ((C0379og) view.getLayoutParams()).b.bottom + ((ViewGroup.MarginLayoutParams) c0379og2).bottomMargin;
        }
    }

    @Override // defpackage.Y7
    public final int c(View view) {
        switch (this.d) {
            case 0:
                C0379og c0379og = (C0379og) view.getLayoutParams();
                ((AbstractC0353ng) this.b).getClass();
                Rect rect = ((C0379og) view.getLayoutParams()).b;
                return view.getMeasuredWidth() + rect.left + rect.right + ((ViewGroup.MarginLayoutParams) c0379og).leftMargin + ((ViewGroup.MarginLayoutParams) c0379og).rightMargin;
            default:
                C0379og c0379og2 = (C0379og) view.getLayoutParams();
                ((AbstractC0353ng) this.b).getClass();
                Rect rect2 = ((C0379og) view.getLayoutParams()).b;
                return view.getMeasuredHeight() + rect2.top + rect2.bottom + ((ViewGroup.MarginLayoutParams) c0379og2).topMargin + ((ViewGroup.MarginLayoutParams) c0379og2).bottomMargin;
        }
    }

    @Override // defpackage.Y7
    public final int d(View view) {
        switch (this.d) {
            case 0:
                C0379og c0379og = (C0379og) view.getLayoutParams();
                ((AbstractC0353ng) this.b).getClass();
                Rect rect = ((C0379og) view.getLayoutParams()).b;
                return view.getMeasuredHeight() + rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) c0379og).topMargin + ((ViewGroup.MarginLayoutParams) c0379og).bottomMargin;
            default:
                C0379og c0379og2 = (C0379og) view.getLayoutParams();
                ((AbstractC0353ng) this.b).getClass();
                Rect rect2 = ((C0379og) view.getLayoutParams()).b;
                return view.getMeasuredWidth() + rect2.left + rect2.right + ((ViewGroup.MarginLayoutParams) c0379og2).leftMargin + ((ViewGroup.MarginLayoutParams) c0379og2).rightMargin;
        }
    }

    @Override // defpackage.Y7
    public final int e(View view) {
        switch (this.d) {
            case 0:
                C0379og c0379og = (C0379og) view.getLayoutParams();
                ((AbstractC0353ng) this.b).getClass();
                return (view.getLeft() - ((C0379og) view.getLayoutParams()).b.left) - ((ViewGroup.MarginLayoutParams) c0379og).leftMargin;
            default:
                C0379og c0379og2 = (C0379og) view.getLayoutParams();
                ((AbstractC0353ng) this.b).getClass();
                return (view.getTop() - ((C0379og) view.getLayoutParams()).b.top) - ((ViewGroup.MarginLayoutParams) c0379og2).topMargin;
        }
    }

    @Override // defpackage.Y7
    public final int f() {
        switch (this.d) {
            case 0:
                return ((AbstractC0353ng) this.b).n;
            default:
                return ((AbstractC0353ng) this.b).o;
        }
    }

    @Override // defpackage.Y7
    public final int g() {
        switch (this.d) {
            case 0:
                AbstractC0353ng abstractC0353ng = (AbstractC0353ng) this.b;
                return abstractC0353ng.n - abstractC0353ng.D();
            default:
                AbstractC0353ng abstractC0353ng2 = (AbstractC0353ng) this.b;
                return abstractC0353ng2.o - abstractC0353ng2.B();
        }
    }

    @Override // defpackage.Y7
    public final int h() {
        switch (this.d) {
            case 0:
                return ((AbstractC0353ng) this.b).D();
            default:
                return ((AbstractC0353ng) this.b).B();
        }
    }

    @Override // defpackage.Y7
    public final int i() {
        switch (this.d) {
            case 0:
                return ((AbstractC0353ng) this.b).l;
            default:
                return ((AbstractC0353ng) this.b).m;
        }
    }

    @Override // defpackage.Y7
    public final int j() {
        switch (this.d) {
            case 0:
                return ((AbstractC0353ng) this.b).m;
            default:
                return ((AbstractC0353ng) this.b).l;
        }
    }

    @Override // defpackage.Y7
    public final int k() {
        switch (this.d) {
            case 0:
                return ((AbstractC0353ng) this.b).C();
            default:
                return ((AbstractC0353ng) this.b).E();
        }
    }

    @Override // defpackage.Y7
    public final int l() {
        switch (this.d) {
            case 0:
                AbstractC0353ng abstractC0353ng = (AbstractC0353ng) this.b;
                return (abstractC0353ng.n - abstractC0353ng.C()) - abstractC0353ng.D();
            default:
                AbstractC0353ng abstractC0353ng2 = (AbstractC0353ng) this.b;
                return (abstractC0353ng2.o - abstractC0353ng2.E()) - abstractC0353ng2.B();
        }
    }

    @Override // defpackage.Y7
    public final int n(View view) {
        switch (this.d) {
            case 0:
                AbstractC0353ng abstractC0353ng = (AbstractC0353ng) this.b;
                Rect rect = (Rect) this.c;
                abstractC0353ng.I(view, rect);
                return rect.right;
            default:
                AbstractC0353ng abstractC0353ng2 = (AbstractC0353ng) this.b;
                Rect rect2 = (Rect) this.c;
                abstractC0353ng2.I(view, rect2);
                return rect2.bottom;
        }
    }

    @Override // defpackage.Y7
    public final int o(View view) {
        switch (this.d) {
            case 0:
                AbstractC0353ng abstractC0353ng = (AbstractC0353ng) this.b;
                Rect rect = (Rect) this.c;
                abstractC0353ng.I(view, rect);
                return rect.left;
            default:
                AbstractC0353ng abstractC0353ng2 = (AbstractC0353ng) this.b;
                Rect rect2 = (Rect) this.c;
                abstractC0353ng2.I(view, rect2);
                return rect2.top;
        }
    }

    @Override // defpackage.Y7
    public final void p(int i) {
        switch (this.d) {
            case 0:
                ((AbstractC0353ng) this.b).M(i);
                return;
            default:
                ((AbstractC0353ng) this.b).N(i);
                return;
        }
    }
}
