<?php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use AppBundle\Entity\Product;

// use Doctrine\ORM\EntityRepository;

class LoginController extends Controller
{
    /**
     * @Route("/login", name="login")
     */
    public function indexAction(Request $request)
    {
        // return $this->render('default/login.html.twig', [
        //     'base_dir' => '5555'
        // ]);

        $repository = $this
        ->getDoctrine()
        ->getManager()
        ->getRepository('AppBundle:Products')
        ;

        $listAdverts = $repository->findAll();

        return $this->render('default/login.html.twig', [
            'listAdverts' => $listAdverts
            // 'listAdverts' => '22'
        ]);

        // foreach ($listAdverts as $advert) {
        // $advert est une instance de Advert
        // echo $advert->getContent();
        // }

        // return $this->render('default/login.html.twig', [
        //     'base_dir' => '5555'
        // ]);
    }

}
