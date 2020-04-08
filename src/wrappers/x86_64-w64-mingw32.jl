# Autogenerated wrapper script for Libtask_jll for x86_64-w64-mingw32
export libtask_v1_2, libtask_v1_3, libtask_v1_1, libtask_v1_0

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"

# Relative path to `libtask_v1_2`
const libtask_v1_2_splitpath = ["bin", "libtask_v1_2.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtask_v1_2_path = ""

# libtask_v1_2-specific global declaration
# This will be filled out by __init__()
libtask_v1_2_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtask_v1_2 = "libtask_v1_2.dll"


# Relative path to `libtask_v1_3`
const libtask_v1_3_splitpath = ["bin", "libtask_v1_3.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtask_v1_3_path = ""

# libtask_v1_3-specific global declaration
# This will be filled out by __init__()
libtask_v1_3_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtask_v1_3 = "libtask_v1_3.dll"


# Relative path to `libtask_v1_1`
const libtask_v1_1_splitpath = ["bin", "libtask_v1_1.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtask_v1_1_path = ""

# libtask_v1_1-specific global declaration
# This will be filled out by __init__()
libtask_v1_1_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtask_v1_1 = "libtask_v1_1.dll"


# Relative path to `libtask_v1_0`
const libtask_v1_0_splitpath = ["bin", "libtask_v1_0.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtask_v1_0_path = ""

# libtask_v1_0-specific global declaration
# This will be filled out by __init__()
libtask_v1_0_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtask_v1_0 = "libtask_v1_0.dll"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Libtask")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [Sys.BINDIR, joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    global libtask_v1_2_path = normpath(joinpath(artifact_dir, libtask_v1_2_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtask_v1_2_handle = dlopen(libtask_v1_2_path)
    push!(LIBPATH_list, dirname(libtask_v1_2_path))

    global libtask_v1_3_path = normpath(joinpath(artifact_dir, libtask_v1_3_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtask_v1_3_handle = dlopen(libtask_v1_3_path)
    push!(LIBPATH_list, dirname(libtask_v1_3_path))

    global libtask_v1_1_path = normpath(joinpath(artifact_dir, libtask_v1_1_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtask_v1_1_handle = dlopen(libtask_v1_1_path)
    push!(LIBPATH_list, dirname(libtask_v1_1_path))

    global libtask_v1_0_path = normpath(joinpath(artifact_dir, libtask_v1_0_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtask_v1_0_handle = dlopen(libtask_v1_0_path)
    push!(LIBPATH_list, dirname(libtask_v1_0_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(LIBPATH_list, ';')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

