<?php

namespace NutricionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Volumenes
 *
 * @ORM\Table(name="volumenes")
 * @ORM\Entity(repositoryClass="NutricionBundle\Repository\VolumenesRepository")
 */
class Volumenes
{


     /**
     * @ORM\ManyToOne(targetEntity="Planilla", inversedBy="volumenes")
     * @ORM\JoinColumn(name="idafiliado", referencedColumnName="id")
     */
    protected $planilla;
    
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var int
     *
     * @ORM\Column(name="idafiliado", type="integer")
     */
    private $idafiliado;

    /**
     * @var string
     *
     * @ORM\Column(name="monto", type="decimal", precision=10, scale=2)
     */
    private $monto;

    /**
     * @var int
     *
     * @ORM\Column(name="pv", type="integer")
     */
    private $pv;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fecha", type="date")
     */
    private $fecha;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set idafiliado
     *
     * @param integer $idafiliado
     *
     * @return Volumenes
     */
    public function setIdafiliado($idafiliado)
    {
        $this->idafiliado = $idafiliado;

        return $this;
    }

    /**
     * Get idafiliado
     *
     * @return int
     */
    public function getIdafiliado()
    {
        return $this->idafiliado;
    }

    /**
     * Set monto
     *
     * @param string $monto
     *
     * @return Volumenes
     */
    public function setMonto($monto)
    {
        $this->monto = $monto;

        return $this;
    }

    /**
     * Get monto
     *
     * @return string
     */
    public function getMonto()
    {
        return $this->monto;
    }

    /**
     * Set pv
     *
     * @param integer $pv
     *
     * @return Volumenes
     */
    public function setPv($pv)
    {
        $this->pv = $pv;

        return $this;
    }

    /**
     * Get pv
     *
     * @return int
     */
    public function getPv()
    {
        return $this->pv;
    }

    /**
     * Set fecha
     *
     * @param \DateTime $fecha
     *
     * @return Volumenes
     */
    public function setFecha($fecha)
    {
        $this->fecha = $fecha;

        return $this;
    }

    /**
     * Get fecha
     *
     * @return \DateTime
     */
    public function getFecha()
    {
        return $this->fecha;
    }

    /**
     * Set planilla
     *
     * @param \NutricionBundle\Entity\Planilla $planilla
     *
     * @return Volumenes
     */
    public function setPlanilla(\NutricionBundle\Entity\Planilla $planilla = null)
    {
        $this->planilla = $planilla;

        return $this;
    }

    /**
     * Get planilla
     *
     * @return \NutricionBundle\Entity\Planilla
     */
    public function getPlanilla()
    {
        return $this->planilla;
    }
    
}
