<?php

class Model_kategori extends CI_Model{
    public function data_action(){
        return $this->db->get_where("tb_barang", array('kategori' => 'Action'));
    }

    public function data_adventure(){
        return $this->db->get_where("tb_barang", array('kategori' => 'Adventure'));
    }

    public function data_sports(){
        return $this->db->get_where("tb_barang", array('kategori' => 'Sports'));
    }

    public function data_role_playing_game(){
        return $this->db->get_where("tb_barang", array('kategori' => 'Role Playing Game'));
    }

    public function data_racing_game(){
        return $this->db->get_where("tb_barang", array('kategori' => 'Racing Game'));
    }
}
?>