<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Products
 *
 * @ORM\Table(name="products")
 * @ORM\Entity
 */
class Products
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=100, nullable=false)
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="text", length=65535, nullable=false)
     */
    private $description;

    /**
     * @var string
     *
     * @ORM\Column(name="photo", type="string", length=100, nullable=false)
     */
    private $photo;

    /**
     * @var string
     *
     * @ORM\Column(name="price_sale", type="decimal", precision=5, scale=2, nullable=false)
     */
    private $priceSale;

    /**
     * @var string
     *
     * @ORM\Column(name="price_buy", type="decimal", precision=5, scale=2, nullable=false)
     */
    private $priceBuy;

    /**
     * @var boolean
     *
     * @ORM\Column(name="quantity_stock", type="boolean", nullable=false)
     */
    private $quantityStock;



    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set name
     *
     * @param string $name
     *
     * @return Products
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set description
     *
     * @param string $description
     *
     * @return Products
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set photo
     *
     * @param string $photo
     *
     * @return Products
     */
    public function setPhoto($photo)
    {
        $this->photo = $photo;

        return $this;
    }

    /**
     * Get photo
     *
     * @return string
     */
    public function getPhoto()
    {
        return $this->photo;
    }

    /**
     * Set priceSale
     *
     * @param string $priceSale
     *
     * @return Products
     */
    public function setPriceSale($priceSale)
    {
        $this->priceSale = $priceSale;

        return $this;
    }

    /**
     * Get priceSale
     *
     * @return string
     */
    public function getPriceSale()
    {
        return $this->priceSale;
    }

    /**
     * Set priceBuy
     *
     * @param string $priceBuy
     *
     * @return Products
     */
    public function setPriceBuy($priceBuy)
    {
        $this->priceBuy = $priceBuy;

        return $this;
    }

    /**
     * Get priceBuy
     *
     * @return string
     */
    public function getPriceBuy()
    {
        return $this->priceBuy;
    }

    /**
     * Set quantityStock
     *
     * @param boolean $quantityStock
     *
     * @return Products
     */
    public function setQuantityStock($quantityStock)
    {
        $this->quantityStock = $quantityStock;

        return $this;
    }

    /**
     * Get quantityStock
     *
     * @return boolean
     */
    public function getQuantityStock()
    {
        return $this->quantityStock;
    }
}
