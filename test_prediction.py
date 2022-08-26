from app import get_prediction

test_payload = { 
   "CRIM":{  
      "0":0.21124
   }, 
   "ZN":{  
      "0":12.5	
   },
   "INDUS":{  
      "0":7.87	
   },
   "CHAS":{  
      "0":0
   },
   "NOX":{  
      "0":0.524
   },
   "RM":{  
      "0":5.631	
   },
   "AGE":{  
      "0":100.0
   },
   "DIS":{  
      "0":6.0821
   },
   "RAD":{  
      "0":5.0
   },
   "TAX":{  
      "0":311.0
   },
   "PTRATIO":{  
      "0":15.2
   },
   "B":{  
      "0":386.63
   },
   "LSTAT":{  
      "0":29.93
   }
}

def test_predict():
    """
    GIVEN a User model
    WHEN a new User is created
    THEN check the email, hashed_password, and role fields are defined correctly
    """
    result = get_prediction(test_payload)
    assert float(result[0]) == 36.357041376594935
