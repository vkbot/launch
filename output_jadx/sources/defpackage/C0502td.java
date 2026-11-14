package defpackage;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.omoda.launcher.R;
import java.util.ArrayList;

/* renamed from: td, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0502td extends AbstractC0275kg {
    public final /* synthetic */ int a = 0;
    public final /* synthetic */ Object b;

    public C0502td(C0552vd c0552vd) {
        this.b = c0552vd;
        AbstractC0561vm.c(null);
        AbstractC0561vm.c(null);
    }

    @Override // defpackage.AbstractC0275kg
    public void d(Rect rect, View view, RecyclerView recyclerView, Ag ag) {
        switch (this.a) {
            case 1:
                AbstractC0348nb.r(rect, "outRect");
                AbstractC0348nb.r(view, "view");
                AbstractC0348nb.r(recyclerView, "parent");
                AbstractC0348nb.r(ag, "state");
                Eg N = RecyclerView.N(view);
                int b = N != null ? N.b() : -1;
                C0658zj c0658zj = (C0658zj) this.b;
                ArrayList arrayList = c0658zj.n;
                C0356nj c0356nj = (C0356nj) L4.x0(arrayList, b);
                if (c0356nj == null) {
                    return;
                }
                int dimensionPixelSize = c0658zj.a.getResources().getDimensionPixelSize(R.dimen.task_card_gap) / 2;
                int width = (recyclerView.getWidth() - C0658zj.a(c0658zj, c0356nj)) / 2;
                if (width < dimensionPixelSize) {
                    width = dimensionPixelSize;
                }
                rect.left = b == 0 ? width : dimensionPixelSize;
                if (b == M4.o0(arrayList)) {
                    dimensionPixelSize = width;
                }
                rect.right = dimensionPixelSize;
                return;
            default:
                super.d(rect, view, recyclerView, ag);
                return;
        }
    }

    @Override // defpackage.AbstractC0275kg
    public void e(Canvas canvas, RecyclerView recyclerView) {
        switch (this.a) {
            case 0:
                if ((recyclerView.getAdapter() instanceof Po) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                    ((C0552vd) this.b).getClass();
                    throw null;
                }
                return;
            default:
                return;
        }
    }

    public C0502td(C0658zj c0658zj) {
        this.b = c0658zj;
    }
}
