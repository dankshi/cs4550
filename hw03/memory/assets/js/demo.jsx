import React from 'react';
import ReactDOM from 'react-dom';
import { Button } from 'reactstrap';

export default function run_demo(root) {
    ReactDOM.render(<Demo />, root);
}

class Demo extends React.Component {
    constructor(props) {
	super(props);  
	this.state = {
	    correct: "",
	    guess: "",
	    clicks: 0
	};
    }

    guess(e) {
	this.state.clicks += 1;
	let id = e.target.id;
	document.getElementById(id).innerHTML= id.charAt(0);
	document.getElementById("counter").innerHTML = "Clicks: " + this.state.clicks;
	if (this.state.guess == ""){
	    //this.setState = ({ guess: id});
	    let st1 = _.extend(this.state, {guess: id});
	    this.setState(st1);
	}
	else {
	    if (this.state.guess.charAt(0) == id.charAt(0)) {
		let st1 = _.extend(this.state, {guess: ""});
		this.setState(st1);
	    }
	    else {
		setTimeout(function() {
			console.log(this.state.clicks);
			console.log(this.state.guess);
			document.getElementById(id).innerHTML = "";
			document.getElementById(this.state.guess).innerHTML = "";
			let st1 = _.extend(this.state, {guess: ""});
			this.setState(st1);
		}.bind(this), 1000);
	    }
	}
    }

    restart(e) {
	let cols = document.getElementsByClassName("col");
	let i= 0;
	for (i=0;i<cols.length;i++){
	    cols[i].innerHTML = "";
	}
	let st1 = _.extend(this.state, {clicks: 0});
	this.setState(st1);
	document.getElementById("counter").innerHTML = "Clicks: " + this.state.clicks;

    }
    render() {
	return (
		<div>


		<div className="row">
		<div className="col" id="A2" onClick={this.guess.bind(this)}>

		</div>       
		<div className="col" id="B2" onClick={this.guess.bind(this)}>

		</div>
		<div className="col" id="B1" onClick={this.guess.bind(this)}>

		</div>
		<div className="col" id="A1" onClick={this.guess.bind(this)}>

		</div>
		</div>

		<div className="row">
		<div className="col" id="G2" onClick={this.guess.bind(this)}>

		</div>       
		<div className="col" id="H2" onClick={this.guess.bind(this)}>

		</div>
		<div className="col" id="G1" onClick={this.guess.bind(this)}>

		</div>
		<div className="col" id="H1" onClick={this.guess.bind(this)}>

		</div>
		</div>


		<div className="row">
		<div className="col" id="C2" onClick={this.guess.bind(this)}>

		</div>       
		<div className="col" id="D2" onClick={this.guess.bind(this)}>

		</div>
		<div className="col" id="C1" onClick={this.guess.bind(this)}>

		</div>
		<div className="col" id="D1" onClick={this.guess.bind(this)}>

		</div>
		</div>


		<div className="row">
		<div className="col" id="E2" onClick={this.guess.bind(this)}>

		</div>       
		<div className="col" id="F2" onClick={this.guess.bind(this)}>

		</div>
		<div className="col" id="E1" onClick={this.guess.bind(this)}>

		</div>
		<div className="col" id="F1" onClick={this.guess.bind(this)}>

		</div>
		</div>

		<div id="counter">
		Clicks: 0 
		</div>
		<div id="reset">
		<button type="button" onClick={this.restart.bind(this)}>Restart</button>
		</div>
		</div>
		);
    }
}

function clear2(id) {
    console.log('clear2' + id);
    document.getElementById(id).innerHTML = "";
}
function Counter(params) {
    let  root = params.root;
    return  <div><p>{root.state.clicks+1}</p></div>;
}

/*class Demo extends React.Component {
  constructor(props) {
  super(props);
  this.state = { side: props.side };
  }

  toggle(side) {
  var side = +!this.state.side;
  this.setState({side: side});
  }

  render() {
  var toggle = this.toggle.bind(this);
  return (
  <div className="row">
  <Side show={this.state.side == 0} toggle={toggle} />
  <div className="col">
  &nbsp;
  </div>
  <Side show={this.state.side == 1} toggle={toggle} />
  </div>
  );
  }
  }*/

function Side(params) {
    if (params.show) {
	return (
		<div id="side-0" className="side col" onMouseOver={ () => params.toggle() }>
		<Button onClick={ () => alert("cheater") }>Click Me</Button>
		</div>
	       );
    }
    else {
	return (
		<div id="side-0" className="side col">
		&nbsp;
		</div>
	       );
    }
}

