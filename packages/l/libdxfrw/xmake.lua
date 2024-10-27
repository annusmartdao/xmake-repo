package("libdxfrw")
    set_homepage("http://sourceforge.net/projects/libdxfrw")
    set_description("C++ library to read and write DXF/DWG files")
    set_license("Apache-2.0")

    add_urls("https://github.com/annusmartdao/xmake-repo/releases/download/$(version)/libdxfrw-$(version).tar.gz")
    add_versions("2024.10.27", "5b2dbeb7d4ce2261ba8e4a55e0bcf326aa3ac01d218d6ebc1da30fe75ce3adaf")

    on_install("windows", function (package)
        os.cp("include", package:installdir())
        os.cp("windows/x64/*.lib", package:installdir("lib"))
    end)
