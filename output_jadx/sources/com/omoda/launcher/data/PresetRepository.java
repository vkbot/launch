package com.omoda.launcher.data;

import android.content.Context;
import android.content.SharedPreferences;
import defpackage.AbstractC0348nb;
import defpackage.AbstractC0554vf;
import defpackage.C0296lb;
import defpackage.C0322mb;
import defpackage.F6;
import defpackage.T7;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class PresetRepository {
    public static final Companion Companion = new Companion(null);
    private static final String KEY_PRESET_COUNT = "preset_count";
    private static final String KEY_PRESET_LEFT = "preset_%d_left";
    private static final String KEY_PRESET_RATIO = "preset_%d_ratio";
    private static final String KEY_PRESET_RIGHT = "preset_%d_right";
    private static final String PREFS_NAME = "omoda_launcher_prefs";
    private final SharedPreferences prefs;

    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(F6 f6) {
            this();
        }

        private Companion() {
        }
    }

    public PresetRepository(Context context) {
        AbstractC0348nb.r(context, "context");
        SharedPreferences sharedPreferences = context.getSharedPreferences(PREFS_NAME, 0);
        AbstractC0348nb.q(sharedPreferences, "getSharedPreferences(...)");
        this.prefs = sharedPreferences;
    }

    private final int getMaxPresets() {
        try {
            return T7.k();
        } catch (Throwable unused) {
            return 5;
        }
    }

    public final boolean canAddPreset() {
        return this.prefs.getInt(KEY_PRESET_COUNT, 0) < getMaxPresets();
    }

    public final boolean deletePreset(int i) {
        int i2 = this.prefs.getInt(KEY_PRESET_COUNT, 0);
        if (i < 0 || i >= i2) {
            return false;
        }
        SharedPreferences.Editor edit = this.prefs.edit();
        int i3 = i2 - 1;
        while (i < i3) {
            int i4 = i + 1;
            String string = this.prefs.getString(String.format(KEY_PRESET_LEFT, Arrays.copyOf(new Object[]{Integer.valueOf(i4)}, 1)), null);
            String string2 = this.prefs.getString(String.format(KEY_PRESET_RIGHT, Arrays.copyOf(new Object[]{Integer.valueOf(i4)}, 1)), null);
            float f = this.prefs.getFloat(String.format(KEY_PRESET_RATIO, Arrays.copyOf(new Object[]{Integer.valueOf(i4)}, 1)), 0.5f);
            if (string != null) {
                edit.putString(String.format(KEY_PRESET_LEFT, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)), string);
            }
            if (string2 != null) {
                edit.putString(String.format(KEY_PRESET_RIGHT, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)), string2);
            } else {
                edit.remove(String.format(KEY_PRESET_RIGHT, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)));
            }
            edit.putFloat(String.format(KEY_PRESET_RATIO, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)), f);
            i = i4;
        }
        edit.remove(String.format(KEY_PRESET_LEFT, Arrays.copyOf(new Object[]{Integer.valueOf(i3)}, 1)));
        edit.remove(String.format(KEY_PRESET_RIGHT, Arrays.copyOf(new Object[]{Integer.valueOf(i3)}, 1)));
        edit.remove(String.format(KEY_PRESET_RATIO, Arrays.copyOf(new Object[]{Integer.valueOf(i3)}, 1)));
        edit.putInt(KEY_PRESET_COUNT, i3);
        edit.apply();
        return true;
    }

    public final List<Preset> getAllPresets() {
        C0322mb o = AbstractC0554vf.o(0, this.prefs.getInt(KEY_PRESET_COUNT, 0));
        ArrayList arrayList = new ArrayList();
        Iterator it = o.iterator();
        while (it.hasNext()) {
            Preset preset = getPreset(((C0296lb) it).a());
            if (preset != null) {
                arrayList.add(preset);
            }
        }
        return arrayList;
    }

    public final Preset getPreset(int i) {
        String string = this.prefs.getString(String.format(KEY_PRESET_LEFT, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)), null);
        if (string == null) {
            return null;
        }
        return new Preset(i, string, this.prefs.getString(String.format(KEY_PRESET_RIGHT, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)), null), this.prefs.getFloat(String.format(KEY_PRESET_RATIO, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)), 0.5f));
    }

    public final int getSavedCount() {
        return this.prefs.getInt(KEY_PRESET_COUNT, 0);
    }

    public final boolean savePreset(Preset preset) {
        int i;
        AbstractC0348nb.r(preset, "preset");
        int i2 = this.prefs.getInt(KEY_PRESET_COUNT, 0);
        if (preset.getId() >= 0 && preset.getId() < i2) {
            i = preset.getId();
        } else {
            if (i2 >= getMaxPresets()) {
                return false;
            }
            i = i2;
        }
        SharedPreferences.Editor edit = this.prefs.edit();
        edit.putString(String.format(KEY_PRESET_LEFT, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)), preset.getLeftApp());
        if (preset.getRightApp() != null) {
            edit.putString(String.format(KEY_PRESET_RIGHT, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)), preset.getRightApp());
        } else {
            edit.remove(String.format(KEY_PRESET_RIGHT, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)));
        }
        edit.putFloat(String.format(KEY_PRESET_RATIO, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)), preset.getRatio());
        if (i >= i2) {
            edit.putInt(KEY_PRESET_COUNT, i + 1);
        }
        edit.apply();
        return true;
    }

    public final boolean swapPresets(int i, int i2) {
        Preset preset;
        int i3 = this.prefs.getInt(KEY_PRESET_COUNT, 0);
        if (i < 0 || i >= i3 || i2 < 0 || i2 >= i3) {
            return false;
        }
        if (i == i2) {
            return true;
        }
        Preset preset2 = getPreset(i);
        if (preset2 == null || (preset = getPreset(i2)) == null) {
            return false;
        }
        SharedPreferences.Editor edit = this.prefs.edit();
        edit.putString(String.format(KEY_PRESET_LEFT, Arrays.copyOf(new Object[]{Integer.valueOf(i2)}, 1)), preset2.getLeftApp());
        if (preset2.getRightApp() != null) {
            edit.putString(String.format(KEY_PRESET_RIGHT, Arrays.copyOf(new Object[]{Integer.valueOf(i2)}, 1)), preset2.getRightApp());
        } else {
            edit.remove(String.format(KEY_PRESET_RIGHT, Arrays.copyOf(new Object[]{Integer.valueOf(i2)}, 1)));
        }
        edit.putFloat(String.format(KEY_PRESET_RATIO, Arrays.copyOf(new Object[]{Integer.valueOf(i2)}, 1)), preset2.getRatio());
        edit.putString(String.format(KEY_PRESET_LEFT, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)), preset.getLeftApp());
        if (preset.getRightApp() != null) {
            edit.putString(String.format(KEY_PRESET_RIGHT, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)), preset.getRightApp());
        } else {
            edit.remove(String.format(KEY_PRESET_RIGHT, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)));
        }
        edit.putFloat(String.format(KEY_PRESET_RATIO, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)), preset.getRatio());
        edit.apply();
        return true;
    }
}
