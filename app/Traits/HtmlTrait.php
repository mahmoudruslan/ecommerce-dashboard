<?php

namespace App\Traits;
trait HtmlTrait
{

    public function href($route, $name)
    {
        return '<a class="btn btn-secondary"
        href="'. $route .'">
        '. __($name) .'
    </a>';
    }
    public function h_edit($route){
        return '<a class="btn btn-info btn-circle" href="' . $route . '">
        <i class="fas fa-edit"></i></a>';
    }

    public function h_delete($row){
        return '<a class="btn btn-danger btn-circle" href="#"
        data-toggle="modal"data-target="#deletemodel'.$row->id.'">
        <i class="fas fa-trash"></i>
    </a>';
    }

    public function h_show($route){
        return '<a class="btn btn-warning btn-circle" href="' . $route . '">
        <i class="fas fa-eye"></i></a>';
    }

    public function modal($row, $route)
    {
        return '<div class="modal fade" id="deletemodel'. $row->id .'" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"> '. __ ("Warning") . '</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body"> '. __ ("Are you sure you want to delete the element?"). '
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">'. __ ("Close") . '</button>
                    <form id="logout-form" action="'.$route.'"method="POST">
                        <input type="hidden" name="_token" value="'. csrf_token()  .'" />  '. method_field("Delete") .'
                        
                        <button type="submit" class="btn btn-danger">'. __ ("Delete") . '</button>
                    </form>
    
                </div>
            </div>
        </div>
    </div>';
    }

}
