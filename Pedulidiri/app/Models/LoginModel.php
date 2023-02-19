<?php
namespace App\Models;
use CodeIgniter\Model;
    class LoginModel extends Model
    {
        public function cekLogin($nik, $password)
        {
            return $this->db->table('user')->where(
            array(
            'nik' => $nik,
            'password' => $password
            )
            )->get()->getRowArray();
        }
}
