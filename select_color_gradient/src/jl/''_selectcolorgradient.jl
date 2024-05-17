# AUTO GENERATED FILE - DO NOT EDIT

export ''_selectcolorgradient

"""
    ''_selectcolorgradient(;kwargs...)

A SelectColorGradient component.
ExampleComponent is an example component.
It takes a property, `label`, and
displays it.
It renders an input with the property `value`
which is editable by the user.
Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `label` (String; required): A label that will be printed when this component is rendered.
- `options` (Dict; optional): Options of select
- `value` (String; optional): The value displayed in the input.
"""
function ''_selectcolorgradient(; kwargs...)
        available_props = Symbol[:id, :label, :options, :value]
        wild_props = Symbol[]
        return Component("''_selectcolorgradient", "SelectColorGradient", "select_color_gradient", available_props, wild_props; kwargs...)
end

