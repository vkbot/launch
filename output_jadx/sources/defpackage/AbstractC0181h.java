package defpackage;

import java.util.AbstractList;
import java.util.List;

/* renamed from: h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0181h extends AbstractList implements List {
    public abstract int a();

    public abstract Object b(int i);

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ Object remove(int i) {
        return b(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return a();
    }
}
