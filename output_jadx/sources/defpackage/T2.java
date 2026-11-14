package defpackage;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class T2 extends AbstractC0181h {
    public static final Object[] d = new Object[0];
    public int a;
    public Object[] b = d;
    public int c;

    @Override // defpackage.AbstractC0181h
    public final int a() {
        return this.c;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        int i3 = this.c;
        if (i < 0 || i > i3) {
            throw new IndexOutOfBoundsException("index: " + i + ", size: " + i3);
        }
        if (i == i3) {
            c(obj);
            return;
        }
        if (i == 0) {
            e(i3 + 1);
            int i4 = this.a;
            if (i4 == 0) {
                Object[] objArr = this.b;
                AbstractC0348nb.r(objArr, "<this>");
                i4 = objArr.length;
            }
            int i5 = i4 - 1;
            this.a = i5;
            this.b[i5] = obj;
            this.c++;
            return;
        }
        e(i3 + 1);
        int g = g(this.a + i);
        int i6 = this.c;
        if (i < ((i6 + 1) >> 1)) {
            if (g == 0) {
                Object[] objArr2 = this.b;
                AbstractC0348nb.r(objArr2, "<this>");
                i2 = objArr2.length - 1;
            } else {
                i2 = g - 1;
            }
            int i7 = this.a;
            if (i7 == 0) {
                Object[] objArr3 = this.b;
                AbstractC0348nb.r(objArr3, "<this>");
                i7 = objArr3.length;
            }
            int i8 = i7 - 1;
            int i9 = this.a;
            if (i2 >= i9) {
                Object[] objArr4 = this.b;
                objArr4[i8] = objArr4[i9];
                Z2.U(objArr4, objArr4, i9, i9 + 1, i2 + 1);
            } else {
                Object[] objArr5 = this.b;
                Z2.U(objArr5, objArr5, i9 - 1, i9, objArr5.length);
                Object[] objArr6 = this.b;
                objArr6[objArr6.length - 1] = objArr6[0];
                Z2.U(objArr6, objArr6, 0, 1, i2 + 1);
            }
            this.b[i2] = obj;
            this.a = i8;
        } else {
            int g2 = g(i6 + this.a);
            if (g < g2) {
                Object[] objArr7 = this.b;
                Z2.U(objArr7, objArr7, g + 1, g, g2);
            } else {
                Object[] objArr8 = this.b;
                Z2.U(objArr8, objArr8, 1, 0, g2);
                Object[] objArr9 = this.b;
                objArr9[0] = objArr9[objArr9.length - 1];
                Z2.U(objArr9, objArr9, g + 1, g, objArr9.length - 1);
            }
            this.b[g] = obj;
        }
        this.c++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        AbstractC0348nb.r(collection, "elements");
        int i2 = this.c;
        if (i >= 0 && i <= i2) {
            if (collection.isEmpty()) {
                return false;
            }
            int i3 = this.c;
            if (i == i3) {
                return addAll(collection);
            }
            e(collection.size() + i3);
            int g = g(this.c + this.a);
            int g2 = g(this.a + i);
            int size = collection.size();
            if (i < ((this.c + 1) >> 1)) {
                int i4 = this.a;
                int i5 = i4 - size;
                if (g2 < i4) {
                    Object[] objArr = this.b;
                    Z2.U(objArr, objArr, i5, i4, objArr.length);
                    if (size >= g2) {
                        Object[] objArr2 = this.b;
                        Z2.U(objArr2, objArr2, objArr2.length - size, 0, g2);
                    } else {
                        Object[] objArr3 = this.b;
                        Z2.U(objArr3, objArr3, objArr3.length - size, 0, size);
                        Object[] objArr4 = this.b;
                        Z2.U(objArr4, objArr4, 0, size, g2);
                    }
                } else if (i5 >= 0) {
                    Object[] objArr5 = this.b;
                    Z2.U(objArr5, objArr5, i5, i4, g2);
                } else {
                    Object[] objArr6 = this.b;
                    i5 += objArr6.length;
                    int i6 = g2 - i4;
                    int length = objArr6.length - i5;
                    if (length >= i6) {
                        Z2.U(objArr6, objArr6, i5, i4, g2);
                    } else {
                        Z2.U(objArr6, objArr6, i5, i4, i4 + length);
                        Object[] objArr7 = this.b;
                        Z2.U(objArr7, objArr7, 0, this.a + length, g2);
                    }
                }
                this.a = i5;
                int i7 = g2 - size;
                if (i7 < 0) {
                    i7 += this.b.length;
                }
                d(i7, collection);
            } else {
                int i8 = g2 + size;
                if (g2 < g) {
                    int i9 = size + g;
                    Object[] objArr8 = this.b;
                    if (i9 <= objArr8.length) {
                        Z2.U(objArr8, objArr8, i8, g2, g);
                    } else if (i8 >= objArr8.length) {
                        Z2.U(objArr8, objArr8, i8 - objArr8.length, g2, g);
                    } else {
                        int length2 = g - (i9 - objArr8.length);
                        Z2.U(objArr8, objArr8, 0, length2, g);
                        Object[] objArr9 = this.b;
                        Z2.U(objArr9, objArr9, i8, g2, length2);
                    }
                } else {
                    Object[] objArr10 = this.b;
                    Z2.U(objArr10, objArr10, size, 0, g);
                    Object[] objArr11 = this.b;
                    if (i8 >= objArr11.length) {
                        Z2.U(objArr11, objArr11, i8 - objArr11.length, g2, objArr11.length);
                    } else {
                        Z2.U(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                        Object[] objArr12 = this.b;
                        Z2.U(objArr12, objArr12, i8, g2, objArr12.length - size);
                    }
                }
                d(g2, collection);
            }
            return true;
        }
        throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
    }

    @Override // defpackage.AbstractC0181h
    public final Object b(int i) {
        int i2 = this.c;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
        }
        if (i == M4.o0(this)) {
            if (isEmpty()) {
                throw new NoSuchElementException("ArrayDeque is empty.");
            }
            int g = g(M4.o0(this) + this.a);
            Object[] objArr = this.b;
            Object obj = objArr[g];
            objArr[g] = null;
            this.c--;
            return obj;
        }
        if (i == 0) {
            return h();
        }
        int g2 = g(this.a + i);
        Object[] objArr2 = this.b;
        Object obj2 = objArr2[g2];
        if (i < (this.c >> 1)) {
            int i3 = this.a;
            if (g2 >= i3) {
                Z2.U(objArr2, objArr2, i3 + 1, i3, g2);
            } else {
                Z2.U(objArr2, objArr2, 1, 0, g2);
                Object[] objArr3 = this.b;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i4 = this.a;
                Z2.U(objArr3, objArr3, i4 + 1, i4, objArr3.length - 1);
            }
            Object[] objArr4 = this.b;
            int i5 = this.a;
            objArr4[i5] = null;
            this.a = f(i5);
        } else {
            int g3 = g(M4.o0(this) + this.a);
            if (g2 <= g3) {
                Object[] objArr5 = this.b;
                Z2.U(objArr5, objArr5, g2, g2 + 1, g3 + 1);
            } else {
                Object[] objArr6 = this.b;
                Z2.U(objArr6, objArr6, g2, g2 + 1, objArr6.length);
                Object[] objArr7 = this.b;
                objArr7[objArr7.length - 1] = objArr7[0];
                Z2.U(objArr7, objArr7, 0, 1, g3 + 1);
            }
            this.b[g3] = null;
        }
        this.c--;
        return obj2;
    }

    public final void c(Object obj) {
        e(a() + 1);
        this.b[g(a() + this.a)] = obj;
        this.c = a() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        int g = g(this.c + this.a);
        int i = this.a;
        if (i < g) {
            Z2.V(this.b, i, g);
        } else if (!isEmpty()) {
            Object[] objArr = this.b;
            Z2.V(objArr, this.a, objArr.length);
            Z2.V(this.b, 0, g);
        }
        this.a = 0;
        this.c = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final void d(int i, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.b.length;
        while (i < length && it.hasNext()) {
            this.b[i] = it.next();
            i++;
        }
        int i2 = this.a;
        for (int i3 = 0; i3 < i2 && it.hasNext(); i3++) {
            this.b[i3] = it.next();
        }
        this.c = collection.size() + a();
    }

    public final void e(int i) {
        if (i < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.b;
        if (i <= objArr.length) {
            return;
        }
        if (objArr == d) {
            if (i < 10) {
                i = 10;
            }
            this.b = new Object[i];
            return;
        }
        int length = objArr.length;
        int i2 = length + (length >> 1);
        if (i2 - i < 0) {
            i2 = i;
        }
        if (i2 - 2147483639 > 0) {
            i2 = i > 2147483639 ? Integer.MAX_VALUE : 2147483639;
        }
        Object[] objArr2 = new Object[i2];
        Z2.U(objArr, objArr2, 0, this.a, objArr.length);
        Object[] objArr3 = this.b;
        int length2 = objArr3.length;
        int i3 = this.a;
        Z2.U(objArr3, objArr2, length2 - i3, 0, i3);
        this.a = 0;
        this.b = objArr2;
    }

    public final int f(int i) {
        AbstractC0348nb.r(this.b, "<this>");
        if (i == r1.length - 1) {
            return 0;
        }
        return i + 1;
    }

    public final int g(int i) {
        Object[] objArr = this.b;
        return i >= objArr.length ? i - objArr.length : i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        int a = a();
        if (i >= 0 && i < a) {
            return this.b[g(this.a + i)];
        }
        throw new IndexOutOfBoundsException("index: " + i + ", size: " + a);
    }

    public final Object h() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        Object[] objArr = this.b;
        int i = this.a;
        Object obj = objArr[i];
        objArr[i] = null;
        this.a = f(i);
        this.c = a() - 1;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i;
        int g = g(a() + this.a);
        int i2 = this.a;
        if (i2 < g) {
            while (i2 < g) {
                if (AbstractC0348nb.g(obj, this.b[i2])) {
                    i = this.a;
                } else {
                    i2++;
                }
            }
            return -1;
        }
        if (i2 < g) {
            return -1;
        }
        int length = this.b.length;
        while (true) {
            if (i2 >= length) {
                for (int i3 = 0; i3 < g; i3++) {
                    if (AbstractC0348nb.g(obj, this.b[i3])) {
                        i2 = i3 + this.b.length;
                        i = this.a;
                    }
                }
                return -1;
            }
            if (AbstractC0348nb.g(obj, this.b[i2])) {
                i = this.a;
                break;
            }
            i2++;
        }
        return i2 - i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return a() == 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int length;
        int i;
        int g = g(this.c + this.a);
        int i2 = this.a;
        if (i2 < g) {
            length = g - 1;
            if (i2 <= length) {
                while (!AbstractC0348nb.g(obj, this.b[length])) {
                    if (length != i2) {
                        length--;
                    }
                }
                i = this.a;
                return length - i;
            }
            return -1;
        }
        if (i2 > g) {
            int i3 = g - 1;
            while (true) {
                if (-1 >= i3) {
                    Object[] objArr = this.b;
                    AbstractC0348nb.r(objArr, "<this>");
                    length = objArr.length - 1;
                    int i4 = this.a;
                    if (i4 <= length) {
                        while (!AbstractC0348nb.g(obj, this.b[length])) {
                            if (length != i4) {
                                length--;
                            }
                        }
                        i = this.a;
                    }
                } else {
                    if (AbstractC0348nb.g(obj, this.b[i3])) {
                        length = i3 + this.b.length;
                        i = this.a;
                        break;
                    }
                    i3--;
                }
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        b(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        int g;
        AbstractC0348nb.r(collection, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.b.length != 0) {
            int g2 = g(this.c + this.a);
            int i = this.a;
            if (i < g2) {
                g = i;
                while (i < g2) {
                    Object obj = this.b[i];
                    if (collection.contains(obj)) {
                        z = true;
                    } else {
                        this.b[g] = obj;
                        g++;
                    }
                    i++;
                }
                Z2.V(this.b, g, g2);
            } else {
                int length = this.b.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr = this.b;
                    Object obj2 = objArr[i];
                    objArr[i] = null;
                    if (collection.contains(obj2)) {
                        z2 = true;
                    } else {
                        this.b[i2] = obj2;
                        i2++;
                    }
                    i++;
                }
                g = g(i2);
                for (int i3 = 0; i3 < g2; i3++) {
                    Object[] objArr2 = this.b;
                    Object obj3 = objArr2[i3];
                    objArr2[i3] = null;
                    if (collection.contains(obj3)) {
                        z2 = true;
                    } else {
                        this.b[g] = obj3;
                        g = f(g);
                    }
                }
                z = z2;
            }
            if (z) {
                int i4 = g - this.a;
                if (i4 < 0) {
                    i4 += this.b.length;
                }
                this.c = i4;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        int g;
        AbstractC0348nb.r(collection, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.b.length != 0) {
            int g2 = g(this.c + this.a);
            int i = this.a;
            if (i < g2) {
                g = i;
                while (i < g2) {
                    Object obj = this.b[i];
                    if (collection.contains(obj)) {
                        this.b[g] = obj;
                        g++;
                    } else {
                        z = true;
                    }
                    i++;
                }
                Z2.V(this.b, g, g2);
            } else {
                int length = this.b.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr = this.b;
                    Object obj2 = objArr[i];
                    objArr[i] = null;
                    if (collection.contains(obj2)) {
                        this.b[i2] = obj2;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i++;
                }
                g = g(i2);
                for (int i3 = 0; i3 < g2; i3++) {
                    Object[] objArr2 = this.b;
                    Object obj3 = objArr2[i3];
                    objArr2[i3] = null;
                    if (collection.contains(obj3)) {
                        this.b[g] = obj3;
                        g = f(g);
                    } else {
                        z2 = true;
                    }
                }
                z = z2;
            }
            if (z) {
                int i4 = g - this.a;
                if (i4 < 0) {
                    i4 += this.b.length;
                }
                this.c = i4;
            }
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        int a = a();
        if (i < 0 || i >= a) {
            throw new IndexOutOfBoundsException("index: " + i + ", size: " + a);
        }
        int g = g(this.a + i);
        Object[] objArr = this.b;
        Object obj2 = objArr[g];
        objArr[g] = obj;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[a()]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        AbstractC0348nb.r(objArr, "array");
        int length = objArr.length;
        int i = this.c;
        if (length < i) {
            Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), i);
            AbstractC0348nb.p(newInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
            objArr = (Object[]) newInstance;
        }
        int g = g(this.c + this.a);
        int i2 = this.a;
        if (i2 < g) {
            Z2.U(this.b, objArr, 0, i2, g);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.b;
            Z2.U(objArr2, objArr, 0, this.a, objArr2.length);
            Object[] objArr3 = this.b;
            Z2.U(objArr3, objArr, objArr3.length - this.a, 0, g);
        }
        int i3 = this.c;
        if (i3 < objArr.length) {
            objArr[i3] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        c(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        AbstractC0348nb.r(collection, "elements");
        if (collection.isEmpty()) {
            return false;
        }
        e(collection.size() + a());
        d(g(a() + this.a), collection);
        return true;
    }
}
