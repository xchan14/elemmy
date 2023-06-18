project('io.github.xchan14.elemmy', 'vala', 'c')

executable(
    meson.project_name(),
    'src' / 'App.vala',
    dependencies: [
        dependency('gtk4')
    ],
    install: true
)



# Install .desktop file
install_data(
    'data' / 'elemmy.desktop',
    install_dir: get_option('datadir') / 'applications',
    rename: meson.project_name() + '.desktop'
)


# Install .metainfo.xml
install_data(
    'data' / 'elemmy.metainfo.xml',
    install_dir: get_option('datadir') / 'metainfo',
    rename: meson.project_name() + '.metainfo.xml'
)
