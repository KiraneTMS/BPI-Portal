<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Landing extends CI_Controller
{

    public function index()
    {
        dborderby('sort_menulanding', 'ASC');
        $menu = dbgetwhere('menulanding', ['status_menulanding' => 1, "level_menulanding" => "1"])->result_array();
        $carousel = dbgetwhere('carousel', ['aktif_carousel' => 1])->result_array();
        $faqs = dbgetwhere('faqs', ['is_active' => 1])->result_array();
        $articles = dbgetwhere('articles', ['aktif_articles' => 1])->result_array();
        $testimonials = dbget('testimonial')->result_array();
        $ourclients = dbget('ourclient')->result_array();
        dborderby("sort_link", "ASC");
        $link = dbget('link')->result_array();
        dbrel("halaman", 'menutengah', "id_halaman");
        $menutengah = dbget('menutengah')->result_array();
        dborderby("sort_sosmed", "ASC");
        $sosmed = dbget('sosmed')->result_array();
        $data = [
            'title' => 'Landing Page',
            'menu' => $menu,
            'carousel' => $carousel,
            'faqs' => $faqs,
            'articles' => $articles,
            'testimonials' => $testimonials,
            'ourclients' => $ourclients,
            'link' => $link,
            'menutengah' => $menutengah,
            'sosmed' => $sosmed
        ];
        $data['content'] = rawview('landing/index', $data);
        view('landing/template', $data);
    }

    // public function reboot($k='')
    // {
    //     if ($k == 'asdlkjasdlkjasdlkj') {
    //         echo 'https://farmerbyte.com:4433/reboot.php?key=asdlkjasdlkjasdlkj';
    //     } else {
    //         echo jsonify('Invalid Key');
    //     }
    // }

}
