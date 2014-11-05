<?php

namespace Application\Form;

use Zend\Captcha\AdapterInterface as CaptchaAdapter;
use Zend\Form\Element;
use Zend\Form\Form;
use Zend\Captcha;
use Zend\Form\Factory;

class Formularios extends Form
{
    public function __construct($name = null)
     {
        parent::__construct($name);
        
        $this->add(array(
            'name' => 'nombre',
            'options' => array(
                'label' => 'Nombre Completo',
            ),
            'attributes' => array(
                'type' => 'text',
                'placeholder' => 'Nombre',
                'class' => 'input'
            ),
        ));

         $this->add(array(
            'name' => 'edad',
            'options' => array(
                'label' => 'Edad',
            ),
            'attributes' => array(
                'type' => 'number',
                 'placeholder' => '24',
                'class' => 'input'
            ),
        ));


          $this->add(array(
            'name' => 'estado',
            'options' => array(
                'label' => 'Estado civil',
            ),
            'attributes' => array(
                'type' => 'text',
                'placeholder' => 'Soltero',
                'class' => 'input'
            ),
        ));


           $this->add(array(
            'name' => 'fecha',
            'options' => array(
                'label' => 'Fecha de nacimiento',
            ),
            'attributes' => array(
                'type' => 'date',
                'placeholder' => '19950115',
                'class' => 'input'
            ),
        ));


            $this->add(array(
            'name' => 'pass',
            'options' => array(
                'label' => 'Password',
            ),
            'attributes' => array(
                'type' => 'password',
                'placeholder' => 'Password',
                'class' => 'input'
            ),
        ));



             $this->add(array(
            'name' => 'user',
            'options' => array(
                'label' => 'Usuario',
            ),
            'attributes' => array(
                'type' => 'text',
                 'placeholder' => 'Usuario',
                'class' => 'input'
            ),
        ));


         $factory = new Factory();

        $email = $factory->createElement(array(
            'type' => 'Zend\Form\Element\Email',
            'name' => 'email',
            'options' => array(
                'label' => 'Correo',
            ),
            'attributes' => array(
                'placeholder' => 'example@dominio.com',
                'class' => 'input'
            ),
                ));

        $this->add($email);
        $this->add(array(
            'name' => 'send',
            'attributes' => array(
                'type' => 'submit',
                'value' => 'Enviar',
                'title' => 'Enviar'
            ),
        ));
        
     
     }
}

?>