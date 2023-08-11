<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Customer extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('backend/Mcustomer');
		$this->load->model('backend/Muser');
		$this->load->model('backend/Morders');
		if(!$this->session->userdata('sessionadmin'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionadmin');
		$this->data['com']='customer';
	}

	public function index()
	{
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mcustomer->customer_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/customer');
		$this->data['list']=$this->Mcustomer->customer_all($limit, $first);
		$this->data['view']='index';
		$this->data['title']='Danh sách khách hàng';
		$this->load->view('backend/layout', $this->data);
	}

	public function insert(){
		$this->load->helper('string');

        $today = date('Y-m-d');
		$todaylimit = strtotime(date("Y-m-d", strtotime($today)) . " +1 month");
        $todaylimit = strftime("%Y-%m-%d", $todaylimit);

        $this->load->library('form_validation');
        $this->load->helper('form');
        $this->form_validation->set_rules('username', 'Tên đăng nhập', 'required|min_length[6]|max_length[32]|is_unique[db_customer.username]');
        // $this->form_validation->set_rules('name', 'Họ và tên', 'required|min_length[5]');
        // $this->form_validation->set_rules('password', 'Mật khẩu', 'required|min_length[6]|max_length[32]');
        // if(!$this->session->userdata('sessionKhachHang')){
        //     $this->form_validation->set_rules('email', 'Email', 'required|is_unique[db_customer.email]');
        // }

        // $this->form_validation->set_rules('phone', 'Số điện thoại', 'required|min_length[6]|numeric|is_unique[db_customer.phone]|max_length[11]');

        if($this->form_validation->run() ==TRUE){
            $data = array(
                'username'     => $_POST['username'],
                'fullname'     => $_POST['name'],
                'email'    => $_POST['email'],
                'phone'    => $_POST['phone'],
				// 'gender'    => $_POST['gender'],
				'chucvu'    => $_POST['chucvu'],
                'created'=>$today,
                'password' => md5($_POST['password'])
            );
			$config['upload_path']          = './public/images/admin/';
			$config['encrypt_name'] = TRUE;
            $config['allowed_types']        = 'gif|jpg|png';
            $config['max_size']             = 5000;
            $this->load->library('upload', $config);
            if ( $this->upload->do_upload('img')){
                $dataimg = $this->upload->data();
                $data['img']=$dataimg['file_name'];
            }else{
                $data['img']='default.png';
            }
            $this->Mcustomer->customer_insert($data);
			// $this->session->set_flashdata('success', 'Thêm nhà cung cấp thành công');
			// redirect('admin/customer','refresh');
            // gui mail ma giam gia
            // $email = $_POST('email');
			// $config_data = $this->Mconfig->get_config();
			// // echo "<pre>---In ra---\n".print_r($config_data)."</pre>";
            // $this->load->library('email');
            // $this->load->library('parser');
            // $this->email->clear();
            // $config['protocol']    = 'smtp';
            // $config['smtp_host']    = 'ssl://smtp.gmail.com';
            // $config['smtp_port']    = '465';
            // $config['smtp_timeout'] = '7';
            // $config['smtp_user']    = $config_data['mail_smtp'];
            // $config['smtp_pass']    = $config_data['mail_smtp_password'];
            // $config['charset']    = 'utf-8';
            // $config['newline']    = "\r\n";
            // $config['wordwrap'] = TRUE;
            // $config['mailtype'] = 'html';
            // $config['validation'] = TRUE;
            // $this->email->initialize($config);

            // $this->email->from($config_data['mail_smtp'], 'Nhân Mobile');
            // $this->email->to($email);
            // $this->email->subject('Hệ thống Nhân Mobile - Quà thành viên mới');
            // $this->email->message('Bạn đã trở thành thành viên mới của cửa hàng Nhân Mobile, Cửa hàng tặng bạn 1 mã giảm giá giảm 100.000 đ : '.$tempcoupon.' , Mã này có giá trị tới ngày '.$tempdatelimit.'
            //     Hãy sử dụng tài khoản để mua hàng để tích lũy nhận thêm nhiều ưu đãi !!!!');
            // $this->email->send();
            // $this->data['success']='Đăng ký thành công! Bạn đã nhận được 1 mã giảm giá cho thành viên mới, vui lòng kiểm tra email !!';

        }
        $this->data['title']='DDCI';
        $this->data['view']='insert';
        $this->load->view('backend/layout',$this->data);
	}

	public function update($id)
	{
		$this->data['row']=$this->Mcustomer->customer_detail($id);
		$this->load->helper('string');

        $today = date('Y-m-d');
		$todaylimit = strtotime(date("Y-m-d", strtotime($today)) . " +1 month");
        $todaylimit = strftime("%Y-%m-%d", $todaylimit);

        $this->load->library('form_validation');
        $this->load->helper('form');
        // $this->form_validation->set_rules('username', 'Tên đăng nhập', 'required|min_length[6]|max_length[32]|is_unique[db_customer.username]');
        $this->form_validation->set_rules('fullname', 'Họ và tên', 'required');
        // $this->form_validation->set_rules('password', 'Mật khẩu', 'required|min_length[6]|max_length[32]');
        // if(!$this->session->userdata('sessionKhachHang')){
        //     $this->form_validation->set_rules('email', 'Email', 'required|is_unique[db_customer.email]');
        // }

        // $this->form_validation->set_rules('phone', 'Số điện thoại', 'required|min_length[6]|numeric|is_unique[db_customer.phone]|max_length[11]');

        if($this->form_validation->run() ==TRUE){
            $data = array(
                'username'     => $_POST['username'],
                'fullname'     => $_POST['fullname'],
                'email'    => $_POST['email'],
                'phone'    => $_POST['phone'],
				'chucvu'    => $_POST['chucvu'],
				'status'    => $_POST['status'],
                'created'=>$today,
            );
			$config['upload_path']          = './public/images/admin/';
			$config['encrypt_name'] = TRUE;
            $config['allowed_types']        = 'gif|jpg|png';
            $config['max_size']             = 5000;
            $this->load->library('upload', $config);
            if ( $this->upload->do_upload('img')){
                $dataimg = $this->upload->data();
                $data['img']=$dataimg['file_name'];
            }else{
                $data['img']='default.png';
            }
            $this->Mcustomer->customer_update($data, $id);
			$message = "Cập nhật thành công";
			$this->session->set_flashdata('success', $message);
			redirect('admin/customer/','refresh');
        }
		$this->data['view']='update';
		$this->data['title']='Cập nhật khách hàng';
		$this->load->view('backend/layout', $this->data);
	}

	public function recyclebin()
	{
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mcustomer->customer_trash_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/customer/recyclebin');
		$this->data['list']=$this->Mcustomer->customer_trash($limit, $first);
		$this->data['view']='recyclebin';
		$this->data['title']='Thùng rác khách hàng';
		$this->load->view('backend/layout', $this->data);
	}

	public function trash($id)
	{
		$row = $this->Morders->orders_customerid($id);
		if(count($row) > 0)
		{
			$this->session->set_flashdata('error', 'Khách hàng đã đặt hàng, không thể xóa !');
			redirect('admin/customer','refresh');
		}
		else
		{
			$mydata= array('trash' => 0);
			$this->Mcustomer->customer_update($mydata, $id);
			$this->session->set_flashdata('success', 'Xóa khách hàng vào thùng rác thành công');
			redirect('admin/customer','refresh');
		}
	}
	public function restore($id)
	{
		$this->Mcustomer->customer_restore($id);
		$this->session->set_flashdata('success', 'Khôi phục khách hàng thành công');
		redirect('admin/customer/recyclebin','refresh');
	}

	public function delete($id)
	{
		$this->Mcustomer->customer_delete($id);
		$this->session->set_flashdata('success', 'Xóa khách hàng thành công');
		redirect('admin/customer/recyclebin','refresh');
	}

}