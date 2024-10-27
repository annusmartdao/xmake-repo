package("opencv")
    set_homepage("https://opencv.org/")
    set_description("A open source computer vision library.")
    set_license("Apache-2.0")

    add_urls("https://github.com/annusmartdao/xmake-repo/releases/download/$(version)/opencv-$(version).tar.gz")
    add_versions("2024.10.27", "ebe9a642c20a1ec8294069624ba73e495a2d223c9f6478496573d14e5a766a72")

    on_install("windows", function (package)
        os.cp("include", package:installdir())
        os.cp("windows/x64/*.lib", package:installdir("lib"))
        os.cp("windows/x64/*.dll", package:installdir("lib"))
    end)
