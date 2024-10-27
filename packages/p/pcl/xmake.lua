package("pcl")
    set_homepage("https://pointclouds.org/")
    set_description("The Point Cloud Library (PCL) is a standalone, large scale, open project for 2D/3D image and point cloud processing.")
    set_license("BSD-3-Clause")

    add_urls("https://github.com/annusmartdao/xmake-repo/releases/download/$(version)/pcl-$(version).tar.gz")
    add_versions("2024.10.27", "b87634ec4fffb55ee1b9189c9b5f89368b2b02975d5d00c19e16173daaaddf40")

    on_install("windows", function (package)
        os.cp("include", package:installdir())
        os.cp("windows/x64/*.lib", package:installdir("lib"))
        os.cp("windows/x64/*.dll", package:installdir("lib"))
    end)
