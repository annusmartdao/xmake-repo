package("boost")
    set_homepage("https://www.boost.org/")
    set_description("Collection of portable C++ source libraries.")
    set_license("BSL-1.0")

    add_urls("https://github.com/annusmartdao/xmake-repo/releases/download/$(version)/boost-$(version).tar.gz")
    add_versions("2024.10.27", "123fb31139bd0107832069c71a0fd60d0f5f79a06af9964504ad13a1e867a06f")

    on_install("windows", function (package)
        os.cp("include", package:installdir())
        os.cp("windows/x64/*.lib", package:installdir("lib"))
    end)
