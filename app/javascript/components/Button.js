import React from "react"
import PropTypes from "prop-types"
class Button extends React.Component {
  render () {
    return (
      <button>
        Label: {this.props.label}
      </button>
    );
  }
}

Button.propTypes = {
  label: PropTypes.string
};
export default Button
