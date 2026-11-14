package defpackage;

import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.icu.util.TimeZone;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: me, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0325me implements Comparable, Parcelable {
    public static final Parcelable.Creator<C0325me> CREATOR = new C0489t0(10);
    public final Calendar a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final long f;
    public String g;

    public C0325me(Calendar calendar) {
        calendar.set(5, 1);
        Calendar a = AbstractC0561vm.a(calendar);
        this.a = a;
        this.b = a.get(2);
        this.c = a.get(1);
        this.d = a.getMaximum(7);
        this.e = a.getActualMaximum(5);
        this.f = a.getTimeInMillis();
    }

    public static C0325me a(int i, int i2) {
        Calendar c = AbstractC0561vm.c(null);
        c.set(1, i);
        c.set(2, i2);
        return new C0325me(c);
    }

    public static C0325me b(long j) {
        Calendar c = AbstractC0561vm.c(null);
        c.setTimeInMillis(j);
        return new C0325me(c);
    }

    public final String c() {
        if (this.g == null) {
            long timeInMillis = this.a.getTimeInMillis();
            Locale locale = Locale.getDefault();
            AtomicReference atomicReference = AbstractC0561vm.a;
            DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("yMMMM", locale);
            instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
            instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
            this.g = instanceForSkeleton.format(new Date(timeInMillis));
        }
        return this.g;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.a.compareTo(((C0325me) obj).a);
    }

    public final int d(C0325me c0325me) {
        if (!(this.a instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        return (c0325me.b - this.b) + ((c0325me.c - this.c) * 12);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0325me)) {
            return false;
        }
        C0325me c0325me = (C0325me) obj;
        return this.b == c0325me.b && this.c == c0325me.c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.b), Integer.valueOf(this.c)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.c);
        parcel.writeInt(this.b);
    }
}
