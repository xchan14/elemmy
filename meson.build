project('io.github.xchan14.elemmy', 'vala', 'c')
i18n = import('i18n') # translation module

add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format(meson.project_name()), language: 'c')

executable(
    meson.project_name(),
    'src' / 'App.vala',
    dependencies: [
        dependency('gtk4')
    ],
    install: true
)

i18n.merge_file(
    input: 'data' / 'elemmy.desktop.in',
    output: meson.project_name() + '.desktop',
    po_dir: meson.source_root() / 'po',
    type: 'desktop',
    install: true,
    install_dir: get_option('datadir') / 'applications'
)

i18n.merge_file(
    input: 'data' / 'elemmy.metainfo.xml.in',
    output: meson.project_name() + '.metainfo.xml',
    po_dir: meson.source_root() / 'po',
    install: true,
    install_dir: get_option('datadir') / 'metainfo'
)

subdir('po')