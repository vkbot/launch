package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;

/* renamed from: be, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0041be extends K7 {
    public final int m;
    public final int n;
    public Od o;
    public Pd p;

    public C0041be(Context context, boolean z) {
        super(context, z);
        if (1 == AbstractC0015ae.a(context.getResources().getConfiguration())) {
            this.m = 21;
            this.n = 22;
        } else {
            this.m = 22;
            this.n = 21;
        }
    }

    @Override // defpackage.K7, android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        Id id;
        int i;
        int pointToPosition;
        int i2;
        if (this.o != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                i = headerViewListAdapter.getHeadersCount();
                id = (Id) headerViewListAdapter.getWrappedAdapter();
            } else {
                id = (Id) adapter;
                i = 0;
            }
            Pd item = (motionEvent.getAction() == 10 || (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i2 = pointToPosition - i) < 0 || i2 >= id.getCount()) ? null : id.getItem(i2);
            Pd pd = this.p;
            if (pd != item) {
                Ld ld = id.a;
                if (pd != null) {
                    this.o.o(ld, pd);
                }
                this.p = item;
                if (item != null) {
                    this.o.q(ld, item);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i == this.m) {
            if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        }
        if (listMenuItemView == null || i != this.n) {
            return super.onKeyDown(i, keyEvent);
        }
        setSelection(-1);
        ListAdapter adapter = getAdapter();
        (adapter instanceof HeaderViewListAdapter ? (Id) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (Id) adapter).a.c(false);
        return true;
    }

    public void setHoverListener(Od od) {
        this.o = od;
    }

    @Override // defpackage.K7, android.widget.AbsListView
    public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
        super.setSelector(drawable);
    }
}
