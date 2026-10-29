# Interoperability Test Bed (ITB) - Getting Started
{: #interoperability-test-bed-itb---getting-started}

The test tool 'Interoperability Test Bed' (ITB), is used to perform tests of MedCom FHIR standards.

## How to register
{: #how-to-register}

<ol>
  <li>
    Go to <a href="https://test.itb.medcom.dk/" target="_blank">ITB Login</a>
  </li>
  <li>
    Check within your organization whether or not your organization has been created for this MedCom Community in ITB.
    
    If your organization has <strong>already been registered</strong>, please <strong>contact your local admin</strong> to make them create a user for you. Login with your credentials and skip the rest of these steps.
    
    If your organization has <strong>not been registered</strong>, you must <strong>contact MedCom</strong> at <a href="mailto:fhir@medcom.dk">fhir@medcom.dk</a>. MedCom will create an organisation and an associated organisation administration user, who can then create organisation users. In the email, please provide: <strong>Organization name</strong>, <strong>system name</strong>, <strong>administrator name</strong>, and <strong>administrator e-mail</strong>.
   </li>

</ol>

## Create users
{: #create-users}
<ol>
  <li>
    As administrator you can now create users for people in your organization that needs to test using the ITB. Create them under "My organization" found in the lefthand navigation menu, click "Users" and fill in the information.
    <div>
    <img src="ITBCreateUser.png" alt="ITB Create User">
    </div>
  </li>
</ol>

## Create system and add conformance statement
{: #create-system-and-add-conformance-statement}
<ol>
  <li>
    As adminstrator you can also create the system(s) that represents your software that is being tested in the ITB.
    
    Example: Let's say our organization is Microsoft, then we might have many systems such as Outlook, Word, PowerPoint etc.
    <div>
      <img src="ITBCreateSystem.png" alt="ITB Create System">
    </div>
  </li>
  <li>
    In the lefthand navigation menu you can find "Conformance statements" which is where you will find the tests that your system are to conform to. Click "Create statements" and add the statement that your system should be conformant to.
  <div>
    <img src="ITBCreateConfomance.png" alt="ITB Create Conformance">
  </div>
  <div>
    <img src="ITBAddConformance.png" alt="ITB Add Conformance statement">
  </div>
  </li>
  <li>
    Click "Create" and you can now perform test cases in the selected Conformance statement(s).
  </li>
</ol>

## Perform a test
{: #perform-a-test}
<ol>
  <li>
    Select which conformance statement you want to test your system against.
    <div>
    <img src="ITBSelectConfState.png" alt="ITB Choose conformance statement">
    </div>
  </li>
  <li>
    Click "run" for the test case you want to perform.
    <div>
    <img src="ITBSelecttest.png" alt="ITB Choose test">
    </div>
  </li>
  <li>
    You are now on the test execution page, where you can see what is expected of you, and which tests and/or validation the test engine will perform.
    
    Click "Start" to start the test, click "Minimize" to see the test execution overview, and click "View pending interaction" to continue the test.
    
    <i>Tip: Sometimes, detailed instructions for the test case can be found by clicking the information button (i).</i>
    <div>
    <img src="ITBStartTest.png" alt="ITB Start test">
    </div>
  </li>
  <li>
    When testing that your system can generate a valid message or document, it will most often be required that you submit a file in the pop-up window. When testing FHIR, the file may be added in json or xml. Depending on the test case, there mig be some information or requirements before submitting, as in the picture below.
    <div>
    <img src="ITBAddFile.png" alt="ITB Submit file">
    </div>
  </li>
   <li>
    As part of the documentation that you must provide for the test cases, you are often asked to provide relevant screenshots from the user interface. It is possible to add either one image or alternatively a group of images as a ZIP file.
  </li>
  <li>
    The test engine then performs the tests and validation, and the result can be seen on the test execution page. Click on each step to see the result.
    <div>
    <img src="ITBTestResult.png" alt="ITB Test result">
    </div>
  </li>
  <li>
    If your test sessions are part of a pre-test, aka. a pre-test as part of your certification, please use the 'flag' feature, as seen below to send them to us at MedCom.
    <div>
      <img src="ITBPretestFlag.png" alt="ITB Pretest flag">
    </div>

    These flags gives MedCom an easy overview of exactly which test sessions it is that you want us to review. Notify us through email that you've submitted self-test using the flags and we will review it.

    Include your organisation name and test suite so we know which flags you are referring to.
  </li>
  <li>
    To see the result for the entire conformance statement you can click on the "My conformance statement" on the left and you can see a general overview of your systems conformance to the test suite. You can also click on "My test session" on the left to see the result of the execution, as displayed below, as well as previous executions.
    <div>
    <img src="ITBSeeResult.png" alt="ITB See test results">
    </div>
  </li>
</ol>

## Need help?
{: #need-help}
Help to set up organization and system, getting through a test case or something similar? Please write to fhir@medcom.dk
If you need help getting through a test case, it is very helpful if you send the link to the test execution you are struggling with, please click "Copy link" and send it to MedCom.
