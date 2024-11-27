if (os.isfile("xmake.local.lua")) then
    includes("xmake.local.lua")
end

add_rules("mode.debug", "mode.release")

set_languages("c++23")

option("build_example")
    set_default(false)

target("example_library")
    set_kind("static")
    add_files("src/*.cpp")
    add_includedirs("include", { public = true })
    add_headerfiles("include/(**.h)")

if build_example or has_config("build_example") then
    target("example")
        set_kind("binary")
        add_files("*.cpp")
        add_deps("example_library")
end
