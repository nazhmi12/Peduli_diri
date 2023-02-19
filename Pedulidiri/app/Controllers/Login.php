<?php

namespace App\Controllers;

use App\Models\LoginModel;
use CodeIgniter\HTTP\Request;

class Login extends BaseController
{
    protected $loginModel;
    public function __construct()
    {
        $this->loginModel = new LoginModel();
    }
    public function index()
    {
        $data = [
            'title' => 'Halaman Login'
        ];
        return view('login', $data);
    }
    public function cekLogin()
    {
        $nik = $this->request->getVar('nik');
        $password = $this->request->getVar('password');
        $row = $this->loginModel->cekLogin($nik, $password);
        if (($row['nik'] == $nik) && ($row['password'] == $password)) {
            session()->set('nik', $row['nik']);
            session()->set('nmUser', $row['nmUser']);
            return redirect()->to(base_url('dashboard'));
        } else {
            session()->setFlashdata('gagal', 'Username dan Password Salah !!!');
            return redirect()->to(base_url('login'));
        }
    }
    public function logout()
    {
        session()->destroy();
        return redirect()->to(base_url('home'));
    }
}
