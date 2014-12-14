/** @jsx React.DOM */

var React = require('react');

var App = React.createClass({
  getInitialState: function getInitialState() {
    return {
      puppy: false
    }
  },
  render: function render() {
    var img = this.state.puppy ? <img src="static/images/puppy.jpg" /> : <img src="static/images/kitty.jpg" />;

    return (
      <div>
        {img}
        <br />
        <button onClick={this._swap}>Swap!</button>
      </div>
    );
  },
  _swap: function _swap() {
    this.setState({
      puppy: !this.state.puppy
    });
  }
});

React.render(<App/>, document.getElementById('app'));
