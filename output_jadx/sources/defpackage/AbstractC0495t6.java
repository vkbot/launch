package defpackage;

import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;

/* renamed from: t6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0495t6 extends BaseAdapter implements Filterable {
    public boolean a;
    public boolean b;
    public Cursor c;
    public int d;
    public C0445r6 e;
    public C0470s6 f;
    public C0520u6 g;

    public abstract void a(View view, Cursor cursor);

    public void b(Cursor cursor) {
        Cursor cursor2 = this.c;
        if (cursor == cursor2) {
            cursor2 = null;
        } else {
            if (cursor2 != null) {
                C0445r6 c0445r6 = this.e;
                if (c0445r6 != null) {
                    cursor2.unregisterContentObserver(c0445r6);
                }
                C0470s6 c0470s6 = this.f;
                if (c0470s6 != null) {
                    cursor2.unregisterDataSetObserver(c0470s6);
                }
            }
            this.c = cursor;
            if (cursor != null) {
                C0445r6 c0445r62 = this.e;
                if (c0445r62 != null) {
                    cursor.registerContentObserver(c0445r62);
                }
                C0470s6 c0470s62 = this.f;
                if (c0470s62 != null) {
                    cursor.registerDataSetObserver(c0470s62);
                }
                this.d = cursor.getColumnIndexOrThrow("_id");
                this.a = true;
                notifyDataSetChanged();
            } else {
                this.d = -1;
                this.a = false;
                notifyDataSetInvalidated();
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    public abstract String c(Cursor cursor);

    public abstract View d(ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public final int getCount() {
        Cursor cursor;
        if (!this.a || (cursor = this.c) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (!this.a) {
            return null;
        }
        this.c.moveToPosition(i);
        if (view == null) {
            Vi vi = (Vi) this;
            view = vi.j.inflate(vi.i, viewGroup, false);
        }
        a(view, this.c);
        return view;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [u6, android.widget.Filter] */
    @Override // android.widget.Filterable
    public final Filter getFilter() {
        if (this.g == null) {
            ?? filter = new Filter();
            filter.a = this;
            this.g = filter;
        }
        return this.g;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        Cursor cursor;
        if (!this.a || (cursor = this.c) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.c;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        Cursor cursor;
        if (this.a && (cursor = this.c) != null && cursor.moveToPosition(i)) {
            return this.c.getLong(this.d);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.a) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.c.moveToPosition(i)) {
            throw new IllegalStateException(AbstractC0407pi.h("couldn't move cursor to position ", i));
        }
        if (view == null) {
            view = d(viewGroup);
        }
        a(view, this.c);
        return view;
    }
}
