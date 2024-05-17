
module SelectColorGradient
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("jl/''_selectcolorgradient.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "select_color_gradient",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "async-SelectColorGradient.js",
    external_url = "https://unpkg.com/select_color_gradient@0.0.1/select_color_gradient/async-SelectColorGradient.js",
    dynamic = nothing,
    async = :true,
    type = :js
),
DashBase.Resource(
    relative_package_path = "async-SelectColorGradient.js.map",
    external_url = "https://unpkg.com/select_color_gradient@0.0.1/select_color_gradient/async-SelectColorGradient.js.map",
    dynamic = true,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "select_color_gradient.min.js",
    external_url = "https://unpkg.com/select_color_gradient@0.0.1/select_color_gradient/select_color_gradient.min.js",
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "select_color_gradient.min.js.map",
    external_url = "https://unpkg.com/select_color_gradient@0.0.1/select_color_gradient/select_color_gradient.min.js.map",
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
