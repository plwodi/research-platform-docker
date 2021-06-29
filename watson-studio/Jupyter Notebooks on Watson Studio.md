# Running Jupyter Notebooks on IBM Watson Studio

## Step 1 - Login to IBM Cloud

Visit cloud.ibm.com and enter your IBMid and password.  If you don't have an IBMid, you can create one by following the "Create an account" link on the page.

![Step 1](images/step1.png)

## Step 2 - Create an instance of Watson Studio

From the main IBM Cloud dashboard click on the "Catalog" link at the top and search for "Watson Studio".  Select the Lite plan and then the "Create" button to create your instance of Watson Studio

![Step 2a](images/step2a.png)

![Step 2b](images/step2b.png)

![Step 2c](images/step2c.png)

Once your instance has been created you will be taken to the landing page for Watson Studio.  From this page click on "Get Started" this will take you to the Watson Studio interface.

![Step 2d](images/step2d.png)

 ## Step 3 - Create your Jupyter Notebook project

 From the main Watson Studio interface click on "Projects".  Then click on "New Project" followed by "Create an empty project"

 ![Step 3a](images/step3a.png)

 ![Step 3b](images/step3b.png)

 ![Step 3c](images/step3c.png)

 Give your project a name, description and click on the "Add" link under storage.  If you do not have a Cloud Object Sotrage (COS) service already instantiated, you will be redirected to the COS service page to create a new instance.

 ![Step 3d](images/step3d.png)
 
 ![Step 3e](images/step3e.png)

 Return to the new project creation screen and complete the fields.  You may need to click on the "Refresh" button in order for your COS instance to appear.  Click on "Create" when complete.

 ![Step 3f](images/step3f.png)

## Step 4 - Create your Jupyter Notebook

From the main project page, click on "Add to Project" and select "Notebook" from the list of available options.

 ![Step 4a](images/step4a.png)
 
 ![Step 4b](images/step4b.png)

Give your notebook a name and description, then click on "Create".  

 ![Step 4c](images/step4c.png)

It will take a moment for Watson Studio to load the runtime.  Once complete you will be redirected to your new notebook and can start to develop.

 ![Step 4d](images/step4d.png)