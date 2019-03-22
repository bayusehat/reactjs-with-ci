import React, { Component } from 'react';
import axios from 'axios';

class Form extends Component{

	constructor(){
		super();

		this.state = {
			site_url: '',
			error : {},
			btnLoading : false,
			nama:'',
			alamat:'',
			jurusan:''
		}

		this.onChange = this.onChange.bind(this);
	}

	componentWillMount(){
		this.setState({
			site_url: window['site_url']
		});
	}

	componentDidMount(){

	}

	onChange(e){
		this.setState({[e.target.name]: e.target.value});
	}

	submitBiodata(e){
		e.preventDefault();

		this.setState({btnLoading:true});
		const formData = new FormData();
		formData.append('nama',this.state.nama);
		formData.append('alamat',this.state.alamat);
		formData.append('jurusan',this.state.jurusan);

		axios.post(this.state.site_url+ 'welcome/submit',formData).then(res => {
			const response = res.data;

			if(response.status){
				this.setState({error:{}});
				// this.notification_success(response.message);
			}else{
				// this.notification_error(response.message);
				this.setState({error:response.error});
			}
		}).then(()=>{
			this.setState({btnLoading : false});
		}).catch(error => {
			alert(error.response.status +':'+ error.response.statusText);
			// this.notification_error();
		});
	}

	render(){
		return (
			<div>
				<label>Nama</label>
				<input name="nama" value={this.state.nama} onChange={this.onChange} type="text"/>
				<label>Alamat</label>
				<input name="alamat" value={this.state.alamat} onChange={this.onChange} type="text"/>
				<label>Jurusan</label>
				<input name="jurusan" value={this.state.jurusan} onChange={this.onChange} type="text"/>
				<button
				disabled={this.state.btnLoading}
				onClick={this.submitBiodata.bind(this)}
				type="submit">{this.state.btnLoading ? 'Loading ...' : 'Submit'}</button>
			</div>
		);
	}
}
export default Form;