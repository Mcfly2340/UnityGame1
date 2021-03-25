using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    CharacterController characterController;
    public float MovementSpeed = 3;
    public float Gravity = 0.1f;
    public float velocity = 0;
    public float jumpforce = 0.05f;
    public Camera cam;
    public Rigidbody rb;
    public float horizontalMouseSpeed = 5f;
    public GameObject player;
    public GameObject Objects;
    public float level = 1;
    public Vector3 potentialMovement;

    private void Start()
    {
        characterController = GetComponent<CharacterController>();
        cam = Camera.main;
        Cursor.visible = false;
        rb = GetComponent<Rigidbody>();
    }

    void FixedUpdate()
    {
        // player movement - forward, backward, left, right
        float horizontal = Input.GetAxis("Horizontal");
        float vertical = Input.GetAxis("Vertical");
        Vector3 movementDirection = vertical * transform.forward + horizontal * transform.right;
        movementDirection = movementDirection.normalized;

        potentialMovement = movementDirection * MovementSpeed * Time.deltaTime;


        float mouseX = Input.GetAxis("Mouse X") * horizontalMouseSpeed;
        transform.Rotate(0, mouseX, 0);

        // Gravity
        if (characterController.isGrounded)
        {
            if (Input.GetAxis("Jump") == 1)
            {
                velocity = jumpforce;
            }
            else
            {
                velocity = 0;
                potentialMovement.y = 0;
            }
            
        }
        else
        {
            velocity -= Gravity * Time.deltaTime;
        }
        potentialMovement.y += velocity;
        characterController.Move(potentialMovement);
    }
   
}
