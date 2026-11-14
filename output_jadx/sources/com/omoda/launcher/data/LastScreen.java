package com.omoda.launcher.data;

import android.content.Context;
import android.content.SharedPreferences;
import defpackage.AbstractC0348nb;
import defpackage.AbstractC0407pi;
import defpackage.F6;

/* loaded from: classes.dex */
public abstract class LastScreen {
    public static final Companion Companion = new Companion(null);
    private static final String KEY_APP = "app";
    private static final String KEY_ID = "preset_id";
    private static final String KEY_KIND = "kind";
    private static final String KEY_LEFT = "preset_left";
    private static final String KEY_RATIO = "preset_ratio";
    private static final String KEY_RIGHT = "preset_right";
    private static final String KIND_APP = "app";
    private static final String KIND_HOME = "home";
    private static final String KIND_PRESET = "preset";
    private static final String PREFS = "last_screen";
    private static LastScreen atStart;
    private static LastScreen current;
    private static SharedPreferences prefs;

    /* loaded from: classes.dex */
    public static final class AppFullscreen extends LastScreen {
        private final String packageName;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AppFullscreen(String str) {
            super(null);
            AbstractC0348nb.r(str, "packageName");
            this.packageName = str;
        }

        public static /* synthetic */ AppFullscreen copy$default(AppFullscreen appFullscreen, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = appFullscreen.packageName;
            }
            return appFullscreen.copy(str);
        }

        public final String component1() {
            return this.packageName;
        }

        public final AppFullscreen copy(String str) {
            AbstractC0348nb.r(str, "packageName");
            return new AppFullscreen(str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AppFullscreen) && AbstractC0348nb.g(this.packageName, ((AppFullscreen) obj).packageName);
        }

        public final String getPackageName() {
            return this.packageName;
        }

        public int hashCode() {
            return this.packageName.hashCode();
        }

        public String toString() {
            return AbstractC0407pi.k(new StringBuilder("AppFullscreen(packageName="), this.packageName, ')');
        }
    }

    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(F6 f6) {
            this();
        }

        private final LastScreen read(SharedPreferences sharedPreferences) {
            Preset readPreset;
            String string;
            String string2 = sharedPreferences.getString(LastScreen.KEY_KIND, null);
            if (string2 == null) {
                return null;
            }
            int hashCode = string2.hashCode();
            if (hashCode == -980098337) {
                if (string2.equals(LastScreen.KIND_PRESET) && (readPreset = readPreset(sharedPreferences)) != null) {
                    return new PresetShown(readPreset);
                }
                return null;
            }
            if (hashCode != 96801) {
                if (hashCode == 3208415 && string2.equals(LastScreen.KIND_HOME)) {
                    return Home.INSTANCE;
                }
                return null;
            }
            if (string2.equals("app") && (string = sharedPreferences.getString("app", null)) != null) {
                return new AppFullscreen(string);
            }
            return null;
        }

        private final Preset readPreset(SharedPreferences sharedPreferences) {
            String string = sharedPreferences.getString(LastScreen.KEY_LEFT, null);
            if (string == null) {
                return null;
            }
            return new Preset(sharedPreferences.getInt(LastScreen.KEY_ID, -1), string, sharedPreferences.getString(LastScreen.KEY_RIGHT, null), sharedPreferences.getFloat(LastScreen.KEY_RATIO, 0.5f));
        }

        private final synchronized void write(LastScreen lastScreen) {
            try {
                SharedPreferences sharedPreferences = LastScreen.prefs;
                if (sharedPreferences == null) {
                    return;
                }
                if (AbstractC0348nb.g(lastScreen, LastScreen.current)) {
                    return;
                }
                LastScreen.current = lastScreen;
                SharedPreferences.Editor edit = sharedPreferences.edit();
                if (lastScreen instanceof PresetShown) {
                    edit.putString(LastScreen.KEY_KIND, LastScreen.KIND_PRESET);
                    edit.putInt(LastScreen.KEY_ID, ((PresetShown) lastScreen).getPreset().getId());
                    edit.putString(LastScreen.KEY_LEFT, ((PresetShown) lastScreen).getPreset().getLeftApp());
                    edit.putString(LastScreen.KEY_RIGHT, ((PresetShown) lastScreen).getPreset().getRightApp());
                    edit.putFloat(LastScreen.KEY_RATIO, ((PresetShown) lastScreen).getPreset().getRatio());
                } else if (lastScreen instanceof AppFullscreen) {
                    edit.putString(LastScreen.KEY_KIND, "app").putString("app", ((AppFullscreen) lastScreen).getPackageName());
                } else if (AbstractC0348nb.g(lastScreen, Home.INSTANCE)) {
                    edit.putString(LastScreen.KEY_KIND, LastScreen.KIND_HOME);
                }
                edit.apply();
            } catch (Throwable th) {
                throw th;
            }
        }

        public final void app(String str) {
            AbstractC0348nb.r(str, "packageName");
            write(new AppFullscreen(str));
        }

        public final LastScreen getAtStart() {
            return LastScreen.atStart;
        }

        public final Preset getLastPreset() {
            SharedPreferences sharedPreferences = LastScreen.prefs;
            if (sharedPreferences != null) {
                return LastScreen.Companion.readPreset(sharedPreferences);
            }
            return null;
        }

        public final void home() {
            write(Home.INSTANCE);
        }

        public final synchronized void init(Context context) {
            AbstractC0348nb.r(context, "context");
            if (LastScreen.prefs != null) {
                return;
            }
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(LastScreen.PREFS, 0);
            LastScreen.prefs = sharedPreferences;
            AbstractC0348nb.o(sharedPreferences);
            LastScreen.current = read(sharedPreferences);
            LastScreen.atStart = LastScreen.current;
        }

        public final void preset(Preset preset) {
            AbstractC0348nb.r(preset, LastScreen.KIND_PRESET);
            write(new PresetShown(preset));
        }

        private Companion() {
        }
    }

    /* loaded from: classes.dex */
    public static final class Home extends LastScreen {
        public static final Home INSTANCE = new Home();

        private Home() {
            super(null);
        }
    }

    /* loaded from: classes.dex */
    public static final class PresetShown extends LastScreen {
        private final Preset preset;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PresetShown(Preset preset) {
            super(null);
            AbstractC0348nb.r(preset, LastScreen.KIND_PRESET);
            this.preset = preset;
        }

        public static /* synthetic */ PresetShown copy$default(PresetShown presetShown, Preset preset, int i, Object obj) {
            if ((i & 1) != 0) {
                preset = presetShown.preset;
            }
            return presetShown.copy(preset);
        }

        public final Preset component1() {
            return this.preset;
        }

        public final PresetShown copy(Preset preset) {
            AbstractC0348nb.r(preset, LastScreen.KIND_PRESET);
            return new PresetShown(preset);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PresetShown) && AbstractC0348nb.g(this.preset, ((PresetShown) obj).preset);
        }

        public final Preset getPreset() {
            return this.preset;
        }

        public int hashCode() {
            return this.preset.hashCode();
        }

        public String toString() {
            return "PresetShown(preset=" + this.preset + ')';
        }
    }

    public /* synthetic */ LastScreen(F6 f6) {
        this();
    }

    private LastScreen() {
    }
}
