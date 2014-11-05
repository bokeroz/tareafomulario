<?php

namespace Application\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Application\Form\Formularios;
use Zend\Db\Adapter\Adapter;
use Application\Modelo\Entity\Usuarios;

class FormularioController extends AbstractActionController
{
   public $dbAdapter;
  
    public function registroAction()
    {
        if($this->getRequest()->isPost())
        {
            $this->dbAdapter=$this->getServiceLocator()->get('Zend\Db\Adapter');
            $u=new Usuarios($this->dbAdapter);
            $data = $this->request->getPost();
            $u->addUsuario($data);
             
             return $this->redirect()->toUrl($this->getRequest()->getBaseUrl().'/application/formulario/registro/1');
        
        }else
        {
             $form=new Formularios("form");
           
             $id = (int) $this->params()->fromRoute('id', 0);
          
             $valores=array
            (
                "titulo"=>"Registro de Usuario",
                "form"=>$form,
                'url'=>$this->getRequest()->getBaseUrl(),
                'id'=>$id
            );
            return new ViewModel($valores);

        }
        
    }
   
}
