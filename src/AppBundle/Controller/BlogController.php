<?php
namespace AppBundle\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class BlogController extends Controller
{
    public function showAction($slug, $id)
    {
        // $number = random_int(0, 100);

        return new Response(
            '<html><body>slug number: '.$slug.'<br>and ID :'.$id.'</body></html>'
        );
    }

    public function menuAction($item)
    {
        // $number = random_int(0, 100);

        return new Response(
            '<html><body>item is:<h2> '.$item .'</h2></body></html>'
        );
    }

    public function listAction($year)
    {
        // $number = random_int(0, 100);

        return new Response(
            '<html><body><b>Year is</b>: '.$year.'</body></html>'
        );
    }

    public function siteAction()
    {
        // $number = random_int(0, 100);

        return new Response(
            '<html><body><h1>Default of SiteAction</h1></body></html>'
        );
    }
}