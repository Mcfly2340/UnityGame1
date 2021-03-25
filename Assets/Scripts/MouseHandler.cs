using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MouseHandler : MonoBehaviour
{
    public float horizontalSpeed = 5f;

    public float verticalSpeed = 5f;
    private float xRotation = 0.0f;
    private float yRotation = 0.0f;
    private Camera cam;
    // Start is called before the first frame update
    void Start()
    {
        cam = Camera.main;
    }

    // Update is called once per frame
    void Update()
    {
 
        float mouseY = Input.GetAxis("Mouse Y") * verticalSpeed;
        xRotation -= mouseY;
        xRotation = Mathf.Clamp(xRotation, -90, 90);

        cam.transform.eulerAngles = new Vector3(xRotation, 0.0f, 0.0f);
    }
}
