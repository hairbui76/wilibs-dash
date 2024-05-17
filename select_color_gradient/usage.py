import select_color_gradient
from dash import Dash, callback, html, Input, Output

app = Dash(__name__)

PALETTES = {
    'RdWhtBlk': [[0, 'rgb(255, 0, 0)'], [0.5, 'rgb(255,255,255)'], [1, 'rgb(0,0,0)']],
    'WhtGryBlk': [[0, 'rgb(255, 255, 255)'], [0.5, 'rgb(127,127,127)'], [1, 'rgb(0,0,0)']],
    'RdWhtBu': [[0, 'rgb(255, 0, 0)'], [0.5, 'rgb(255,255,255)'], [1, 'rgb(0,0,255)']],
    'BlkRdYlWht': [[0, 'rgb(0, 0, 0)'], [0.3333, 'rgb(255,0,0)'], [0.6666, 'rgb(255,255,0)'], [1, 'rgb(255,255,255)']]
}

app.layout = html.Div([select_color_gradient.SelectColorGradient(id='input', value='RdWhtBlk', label='my-label', options=PALETTES), html.Div(id='output')])


@callback(Output('output', 'children'), Input('input', 'value'))
def display_output(value):
    return 'You have entered {}'.format(value)


if __name__ == '__main__':
    app.run_server(debug=True)
