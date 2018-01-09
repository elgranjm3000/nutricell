<?php

namespace NutricionBundle\Controller;

use NutricionBundle\Entity\Volumenes;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;


/**
 * Volumene controller.
 *
 */
class VolumenesController extends Controller
{
    /**
     * Lists all volumene entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $volumenes = $em->getRepository('NutricionBundle:Volumenes')->findAll();

        return $this->render('volumenes/index.html.twig', array(
            'volumenes' => $volumenes,
        ));
    }

    /**
     * Creates a new volumene entity.
     *
     */
    public function newAction($id,Request $request)
    {


        $em = $this->getDoctrine()->getManager();
        $queryc = $em->createQuery(
        "SELECT p
        FROM NutricionBundle:Planilla p
        WHERE p.id = '$id'
        "
        );

        $datos = $queryc->getResult();

        $volumene = new Volumenes();
        $form = $this->createForm('NutricionBundle\Form\VolumenesType', $volumene);
        $form->handleRequest($request);
$ip=$this->getDoctrine()->getEntityManager();  
        if ($form->isSubmitted() && $form->isValid()) {
            
    
  
            $em = $this->getDoctrine()->getManager();

              $fecha = new \DateTime($form->getData()->getFecha());
                /*$fecha =  $form->getData()->getFecha();*/
                

        $volumene->setPlanilla($ip->getReference('NutricionBundle:Planilla',$form->getData()->getIdafiliado())); 
              $volumene->setFecha($fecha); 

            $em->persist($volumene);
            $em->flush();

              $this->get('session')->getFlashBag()->add('add','PUNTO DE VOLUMENES ALMACENADO CON EXITO');               
                     

            /*return $this->redirectToRoute('volumenes_show', array('id' => $volumene->getId()));*/
            return $this->redirectToRoute('table');

        }

        return $this->render('volumenes/new.html.twig', array(
            'idafiliado' => $id,
            'datos' => $datos,
            'volumene' => $volumene,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a volumene entity.
     *
     */
    public function showAction(Volumenes $volumene)
    {
        $deleteForm = $this->createDeleteForm($volumene);

        return $this->render('volumenes/show.html.twig', array(
            'volumene' => $volumene,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing volumene entity.
     *
     */
    public function editAction(Request $request, Volumenes $volumene)
    {
        $deleteForm = $this->createDeleteForm($volumene);
        $editForm = $this->createForm('NutricionBundle\Form\VolumenesType', $volumene);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('volumenes_edit', array('id' => $volumene->getId()));
        }

        return $this->render('volumenes/edit.html.twig', array(
            'volumene' => $volumene,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a volumene entity.
     *
     */
    public function deleteAction(Request $request, Volumenes $volumene)
    {
        $form = $this->createDeleteForm($volumene);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($volumene);
            $em->flush();
        }

        return $this->redirectToRoute('volumenes_index');
    }

    /**
     * Creates a form to delete a volumene entity.
     *
     * @param Volumenes $volumene The volumene entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Volumenes $volumene)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('volumenes_delete', array('id' => $volumene->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
