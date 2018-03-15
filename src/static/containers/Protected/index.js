import React from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import PropTypes from 'prop-types';

import * as actionCreators from '../../actions/data';

class ProtectedView extends React.Component {
    static propTypes = {
        isFetching: PropTypes.bool.isRequired,
        data: PropTypes.string,
        token: PropTypes.string.isRequired,
        actions: PropTypes.shape({
            dataFetchProtectedData: PropTypes.func.isRequired
        }).isRequired
    };

    static defaultProps = {
        data: ''
    };


    constructor(props) {
        super(props);
        this.tick = this.tick.bind(this);
    }

    tick() {
        const token = this.props.token;
        this.props.actions.dataFetchProtectedData(token);
    };

    componentDidMount() {
        this.interval = setInterval(this.tick, 1000);
    };

    componentWillUnmount() {
        clearInterval(this.interval);
    };


    render() {
        return (
            <div className="protected">
                <div className="container">
                    <h1 className="text-center margin-bottom-medium">User Zone:</h1>
                        <div>
                            <div className="margin-top-small">
                                <div className="text-center alert alert-info">
                                    <h1><b>{this.props.data}</b></h1>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        );
    }
}

const mapStateToProps = (state) => {
    return {
        data: state.data.data,
        isFetching: state.data.isFetching
    };
};

const mapDispatchToProps = (dispatch) => {
    return {
        actions: bindActionCreators(actionCreators, dispatch)
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(ProtectedView);
export { ProtectedView as ProtectedViewNotConnected };
