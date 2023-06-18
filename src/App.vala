
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
        var main_window = new Gtk.ApplicationWindow(this) {
            default_height = 300,
            default_width = 300,
            title = "Hello world"
        };
        main_window.present();
    }

    public static int main (string[] args) {
        return new App().run(args);
    }

}