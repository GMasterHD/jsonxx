project "jsonxx"
    kind "StaticLib"
    language "C"
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    defines {
        "_CRT_SECURE_NO_WARNINGS"
    }

    files {
        "jsonxx.cc",
        "jsonxx.h"
    }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
