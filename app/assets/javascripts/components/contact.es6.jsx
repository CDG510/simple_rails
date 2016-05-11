class Contact extends React.Component{

    render(){
        return (
            <div>
                {this.props.christian}
                <h3>Welcome to contact page</h3>
                <a href="/pages/about">About page</a>
                <a href="/pages/contact">contact</a>
            </div>
        )
    }
}
