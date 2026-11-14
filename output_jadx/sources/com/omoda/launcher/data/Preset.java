package com.omoda.launcher.data;

import defpackage.AbstractC0348nb;
import defpackage.AbstractC0407pi;
import defpackage.F6;

/* loaded from: classes.dex */
public final class Preset {
    private final int id;
    private final String leftApp;
    private final float ratio;
    private final String rightApp;

    public Preset(int i, String str, String str2, float f) {
        AbstractC0348nb.r(str, "leftApp");
        this.id = i;
        this.leftApp = str;
        this.rightApp = str2;
        this.ratio = f;
    }

    public static /* synthetic */ Preset copy$default(Preset preset, int i, String str, String str2, float f, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = preset.id;
        }
        if ((i2 & 2) != 0) {
            str = preset.leftApp;
        }
        if ((i2 & 4) != 0) {
            str2 = preset.rightApp;
        }
        if ((i2 & 8) != 0) {
            f = preset.ratio;
        }
        return preset.copy(i, str, str2, f);
    }

    public final int component1() {
        return this.id;
    }

    public final String component2() {
        return this.leftApp;
    }

    public final String component3() {
        return this.rightApp;
    }

    public final float component4() {
        return this.ratio;
    }

    public final Preset copy(int i, String str, String str2, float f) {
        AbstractC0348nb.r(str, "leftApp");
        return new Preset(i, str, str2, f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Preset)) {
            return false;
        }
        Preset preset = (Preset) obj;
        return this.id == preset.id && AbstractC0348nb.g(this.leftApp, preset.leftApp) && AbstractC0348nb.g(this.rightApp, preset.rightApp) && Float.compare(this.ratio, preset.ratio) == 0;
    }

    public final int getId() {
        return this.id;
    }

    public final String getLeftApp() {
        return this.leftApp;
    }

    public final float getRatio() {
        return this.ratio;
    }

    public final String getRightApp() {
        return this.rightApp;
    }

    public int hashCode() {
        int e = AbstractC0407pi.e(this.leftApp, Integer.hashCode(this.id) * 31, 31);
        String str = this.rightApp;
        return Float.hashCode(this.ratio) + ((e + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final boolean isSingle() {
        return this.rightApp == null;
    }

    public String toString() {
        return "Preset(id=" + this.id + ", leftApp=" + this.leftApp + ", rightApp=" + this.rightApp + ", ratio=" + this.ratio + ')';
    }

    public /* synthetic */ Preset(int i, String str, String str2, float f, int i2, F6 f6) {
        this(i, str, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? 0.5f : f);
    }
}
