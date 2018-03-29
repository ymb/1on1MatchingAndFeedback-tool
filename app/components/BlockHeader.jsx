import React, { Component } from 'react';
import PropTypes from 'prop-types';

// Component to display a decorated block header
// color can be overwritten with color prop
// if no text is specified renders only a decorated line
class BlockHeader extends Component {
  render() {
    const background = { background: this.props.color };
    const color = { color: this.props.color };
    const long = (this.props.text !== '') ? ' long' : '';
    return (
      <div className="block-header" style={color} >
        <div className="border">
          <div className="line left round" style={background} />
          <div className={`line left${long}`} style={background} />
          <div className="dot left" style={background} />
        </div>
        {((this.props.text !== '') || undefined) && <h4 className="header">{this.props.text}</h4>}
        <div className="border">
          <div className="line right round" style={background} />
          <div className={`line right${long}`} style={background} />
          <div className="dot right" style={background} />
        </div>
      </div>
    );
  }
}

BlockHeader.propTypes = {
  text: PropTypes.string,
  color: PropTypes.string,
};

BlockHeader.defaultProps = {
  text: '',
  color: '#A3A3A3',
};

export default BlockHeader;
