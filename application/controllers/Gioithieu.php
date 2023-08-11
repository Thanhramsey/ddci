<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Gioithieu extends CI_Controller {
	// Hàm khởi tạo
    function __construct() {
        parent::__construct();
        $this->data['com']='gioithieu';
        $this->load->model('frontend/Mcategory');
        $this->load->model('frontend/Mproduct');
        $this->load->model('frontend/Mcustomer');
    }

	public function index(){
        $this->data['title']='Giới thiệu';
        $this->data['view']='index';
		$this->load->view('frontend/layout',$this->data);
	}

    public function hoidongdanhgia(){
        $this->data['title']='Hội đồng đánh giá';
        $this->load->library('phantrang');
        $limit=12;
        $current=$this->phantrang->PageCurrent();
        $first=$this->phantrang->PageFirst($limit, $current);
        $total=$this->Mcustomer->customer_count();
        $this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='hoi-dong-danh-gia');
        $this->data['list']=$this->Mcustomer->customer_all($limit,$first);
        $this->data['view']='hoidongdanhgia';
		$this->load->view('frontend/layout',$this->data);
	}
}