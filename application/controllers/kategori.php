<?php

class Kategori extends CI_Controller{
    public function action(){
        $data['action'] = $this->model_kategori->data_action()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('action', $data);
        $this->load->view('templates/footer');
    }

    public function adventure(){
        $data['adventure'] = $this->model_kategori->data_adventure()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('adventure', $data);
        $this->load->view('templates/footer');
    }

    public function sports(){
        $data['sports'] = $this->model_kategori->data_sports()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('sports', $data);
        $this->load->view('templates/footer');
    }

    public function role_playing_game(){
        $data['role_playing_game'] = $this->model_kategori->data_role_playing_game()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('role_playing_game', $data);
        $this->load->view('templates/footer');
    }

    public function racing_game(){
        $data['racing_game'] = $this->model_kategori->data_racing_game()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('racing_game', $data);
        $this->load->view('templates/footer');
    }
}
?>