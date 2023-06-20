
/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2023 Christian Camilon <chancamilon@proton.me>
 */
 
public class App : Gtk.Application {

    public App() {
        Object(
            application_id: "io.github.xchan14.elemmy",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate() {

        var paned = new Gtk.Paned (Gtk.Orientation.HORIZONTAL) {
            resize_start_child = false,
            shrink_end_child = false,
            shrink_start_child = false
        };

        var main_window = new Gtk.ApplicationWindow(this) {
            child = paned,
            titlebar = new Gtk.Grid() { visible = false }
        };

        main_window.present();
    }

    public static int main (string[] args) {
        return new App().run(args);
    }

}