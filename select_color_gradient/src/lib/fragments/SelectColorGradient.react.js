import {Flex, Progress, Select} from 'antd';
import PropTypes from 'prop-types';
import React from 'react';
import './style.css';

const convertRgbToHex = (color) => {
    const [, r, g, b] = color.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
    const hexColor = `#${(
        (1 << 24) +
        (parseInt(r, 10) << 16) +
        (parseInt(g, 10) << 8) +
        parseInt(b, 10)
    )
        .toString(16)
        .slice(1)}`;
    return hexColor;
};

const parseColors = (colors) =>
    colors.reduce((obj, [key, value]) => {
        const percentage = Math.round(key * 100) + '%';
        const isRGBColor = /^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/.test(value);

        if (isRGBColor) {
            obj[percentage] = convertRgbToHex(value);
        } else {
            obj[percentage] = value;
        }

        return obj;
    }, {});

/**
 * ExampleComponent is an example component.
 * It takes a property, `label`, and
 * displays it.
 * It renders an input with the property `value`
 * which is editable by the user.
 */
const SelectColorGradient = (props) => {
    const {options: _options, setProps} = props;

    const options = Object.entries(_options).map(([key, option]) => {
        return {
            label: parseColors(option),
            value: key,
        };
    });

    const optionRender = (props) => {
        const {label, value} = props;
        return (
            <Flex style={{width: '100%'}} gap={20} justify="space-between">
                <span>{value}</span>
                <Progress
                    percent={100}
                    size={[300, 16]}
                    strokeColor={label}
                    showInfo={false}
                />
            </Flex>
        );
    };

    const handleSelect = (value) => setProps({value});

    return (
        <Select
            options={options}
            labelRender={optionRender}
            optionRender={optionRender}
            defaultValue={options[0].value}
            onSelect={handleSelect}
        />
    );
};

SelectColorGradient.defaultProps = {};

SelectColorGradient.propTypes = {
    /**
     * The ID used to identify this component in Dash callbacks.
     */
    id: PropTypes.string,

    /**
     * A label that will be printed when this component is rendered.
     */
    label: PropTypes.string.isRequired,

    /**
     * The value displayed in the input.
     */
    value: PropTypes.object,

    /**
     * Dash-assigned callback that should be called to report property changes
     * to Dash, to make them available for callbacks.
     */
    setProps: PropTypes.func,

    /**
     * Options of select
     */
    options: PropTypes.object,
};

export default SelectColorGradient;
