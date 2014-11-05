<?php
namespace Application\Modelo\Entity;

use Zend\Db\TableGateway\TableGateway;
use Zend\Db\Adapter\Adapter;

class Usuarios extends TableGateway
{
    private $nombre;
    private $correo;
    private $edad;
    private $estado;
    private $fecha;
    private $pass;
    private $user;
    
    public function __construct(Adapter $adapter = null, $databaseSchema = null, ResultSet $selectResultPrototype = null)
    {
        return parent::__construct('usuarios', $adapter, $databaseSchema,$selectResultPrototype);
    }
    private function cargaAtributos($datos=array())
    {
        $this->nombre=$datos["nombre"];
        $this->edad=$datos["edad"];
        $this->estado=$datos["estado"];
        $this->fecha=$datos["fecha"];
        $this->pass=$datos["pass"];
        $this->correo=$datos["email"];
        $this->user=$datos["user"];
        $this->estado=$datos["estado"];
    
    }
     public function getUsuarios()
        {
            $datos = $this->select();
            return $datos->toArray();
        }
     public function getUsuarioPorId($id)
     {
        $id  = (int) $id;
        $rowset = $this->select(array('id' => $id));
        $row = $rowset->current();
        
        if (!$row) {
            throw new \Exception("No hay registros asociados al valor $id");
        }
        
        return $row;
     }
      public function addUsuario($data=array())
        {
             self::cargaAtributos($data);
            

             /*
             echo "nombre________".$this->nombre;
             echo "<br>";
             echo "edad________".$this->edad;
             echo "<br>";
             echo "estado________".$this->estado;
             echo "<br>";
             echo "fecha________".$this->fecha;
             echo "<br>";
             echo "pass________".$this->pass;
             echo "<br>";
             echo "edad________".$this->edad;
             echo "<br>";

             echo "nombre________".$this->nombre;
             echo "<br>";
             echo "correo________".$this->correo;
             */

             $array=array
             (
                'nombre'=>$this->nombre,
                'edad'=>$this->edad,
                'estado'=>$this->estado,
                'fecha'=>$this->fecha,
                'pass'=>$this->pass,
                'user'=>$this->user,
                'correo'=>$this->correo
             );
               $this->insert($array);
               
        }
       
        

    public function updateUsuario($id, $data=array())
    {
        
        $this->update($data, array('id' => $id));
    }

    public function deleteUsuario($id)
    {
        $this->delete(array('id' => $id));
    }
}

