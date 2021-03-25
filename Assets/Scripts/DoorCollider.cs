using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;


public class DoorCollider : MonoBehaviour
{
    public PlayerController rb;
    public float level = 2;
    public GameObject Objects;

    // Start is called before the first frame update
    void Start()
    {
       
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Doorway"))
        {
            Debug.Log("Collision With door");
            Destroy(collision.gameObject);
            //layer.transform.Translate(0, 100, 0);
            SceneManager.LoadScene("Level " + 2);
            Destroy(Objects.gameObject);
            Debug.Log("you now go to level 1");

        }
        if (collision.gameObject.CompareTag("Doorway2"))
        {
            
            SceneManager.LoadScene("Level " + 1);
            Debug.Log("you now go to level 2");
        }
    }
}