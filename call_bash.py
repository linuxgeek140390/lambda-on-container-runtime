#!/usr/bin/python


import subprocess
def lambda_handler(event, context):   
    print ("start")
    subprocess.call("./generate_csv.sh")
    print("end")
    return {
        'statusCode': 200,
        'body': 'hello'
    }
