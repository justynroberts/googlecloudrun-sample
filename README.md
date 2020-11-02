# Google Cloud Run, Example, NodeJS

## Very simple NodeJS example


Simply Clone && cd

Run the following commands


**Create the build.**

    gcloud builds submit --tag gcr.io/instana-solution-architects/nodejs-test-justyn

**Deploy the build**

    gcloud run deploy --image gcr.io/instana-solution-architects/nodejs-test-justyn --platform managed

Add Environment Variables:-

 

     INSTANA_ENDPOINT_URL = **SERVERLESS ENDPOINT** 
     INSTANA_AGENT_KEY =  Agent Key

    

Check logs for goodness:-

    2020-11-02 11:31:00.818 GMT
    
    Sending data to Instana (/metrics).

