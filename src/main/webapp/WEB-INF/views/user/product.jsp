<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Connect To Organic Salon</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css\bootstrap.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script> 
    <script src="js\bootstrap.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <style>.button3 {background-color: #800000;
    text-decoration:none;
    } </style>
    
</head>

<body>

<nav class="navbar navbar-dark bg-success">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/#">Connect To Organic Salon</a>
    </div>
    <ul class="nav navbar-nav">
     
      <li class="active"><a href="#" " class="btn btn-primary" role="button">Home</a></li>
      
    </ul>
    
  </div>
</nav>
<body>
    <div class="text-center" >
        <marquee behavior="alternate" scrollamount="30">
        <h1 >Connect To Organic Salon</h1>
    </marquee>
    </div>
    <div class="row" class="container-fluid" style=" margin-left: 1px; margin-right: 1px; margin-top: 1px; width: 100%;">
        <div class="card col-3" id="r1c1"  style="outline: solid gray;" >
            <div class="card-header" style="text-align: center;">
                <input class="form-check-input" type="checkbox" value="" id="Check1" onclick="myFunction1()">
            </div>
             <img src="/image/prod1.jpg" class="card-img-top" style="height: 400px;">
            <div class="card-body">
                <h3 class="card-title" id="Product1">Dr. Organic Oil</h3>
               
                
                <div class="form-group row">
                    <label class="col-form-label col-sm-3">Price: RS</label>
                    <div class="col-sm">
                        <input class="form-control" id="Price1" type="text" name="price" value="250" readonly style="width: 100px;">
                    </div>    
                </div> 
                <div class="form-group row" style="margin-top: 10px;">
                    <label class="col-form-label col-sm-3">Qty=</label>
                    <div class="col-sm">
                        <input class="form-control" type="number" id="Q1" min="0" max="25" value="0" style="width: 100px;">
                    </div>    
                </div> 
                
          
                    
                </div>
             </div>
        
        <div class="card col-3" id="r1c2" style="outline: solid gray;">
            <div class="card-header" style="text-align: center;">
                <input class="form-check-input" type="checkbox" value="" id="Check2" onclick="myFunction2()">
            </div>
            <img src="/image/prod2.jpeg" class="card-img-top" style="height: 400px;">
            <div class="card-body">
                <h3 class="card-title" id="Product2">Kale+Green Tea Cleanser</h3>
                
                <div class="form-group row">
                    <label class="col-form-label col-sm-3">Price: RS</label>
                    <div class="col-sm">
                        <input class="form-control" type="text" name="price" id="Price2" value="199" readonly style="width: 100px;">
                    </div>    
                </div> 
                <div class="form-group row" style="margin-top: 10px;">
                    <label class="col-form-label col-sm-3">Qty=</label>
                    <div class="col-sm">
                        <input class="form-control" type="number" id="Q2" min="0" max="25" value="0" style="width: 100px;">
                    </div>    
                </div>    
            </div>
        </div>
        <div class="card col-3" id="r1c3" style="outline: solid gray;">
            <div class="card-header" style="text-align: center;">
                <input class="form-check-input" type="checkbox" value="" id="Check3" onclick="myFunction3()">
            </div>
            <img src="/image/prod3.jpeg" class="card-img-top" style="height: 400px;">
            <div class="card-body">
                <h3 class="card-title" id="Product3">Skin Fruits Body Lotion+ Face Pack</h3>
              
                <div class="form-group row">
                    <label class="col-form-label col-sm-3">Price: RS</label>
                    <div class="col-sm">
                        <input class="form-control" type="text" name="price" id="Price3" value="450" readonly style="width: 100px;">
                    </div>    
                </div> 
                <div class="form-group row" style="margin-top: 10px;">
                    <label class="col-form-label col-sm-3">Qty=</label>
                    <div class="col-sm">
                        <input class="form-control" type="number" id="Q3" min="0" max="25" value="0" style="width: 100px;">
                    </div>    
                </div>    
            </div>
        </div>
        <div class="card col-3" id="r1c4" style="outline: solid gray;">
            <div class="card-header" style="text-align: center;">
                <input class="form-check-input" type="checkbox" value="" id="Check4" onclick="myFunction4()">
            </div>
            <img src="/image/prod6.jpeg" class="card-img-top" style="height: 400px;">
            <div class="card-body">
                <h3 class="card-title" id="Product4">Coconut Oil</h3>
               
                <div class="form-group row">
                    <label class="col-form-label col-sm-3">Price: RS</label>
                    <div class="col-sm">
                        <input class="form-control" id="Price4" type="text" name="price" value="129" readonly style="width: 100px;">
                    </div>    
                </div> 
                <div class="form-group row" style="margin-top: 10px;">
                    <label class="col-form-label col-sm-3">Qty=</label>
                    <div class="col-sm">
                        <input class="form-control" type="number" id="Q4" min="0" max="25" value="0" style="width: 100px;">
                    </div>    
                </div>    
            </div>
        </div>
    </div>
    <div class="row" class="container-fluid" style=" margin-left: 1px; margin-right: 1px; width: 100%;">
        <div class="card col-3" id="r2c1" style="outline: solid gray;">
            <div class="card-header" style="text-align: center;">
                <input class="form-check-input" type="checkbox" value="" id="Check5" onclick="myFunction5()">
            </div>
            <img src="/image/prod7.jpg" class="card-img-top" style="height: 400px;">
            <div class="card-body">
                <h3 class="card-title" id="Product5">Lemongrass Lavender Oil</h3>
               
                <div class="form-group row">
                    <label class="col-form-label col-sm-3">Price: RS</label>
                    <div class="col-sm">
                        <input class="form-control" id="Price5" type="text" name="price" value="239" readonly style="width: 100px;">
                    </div>    
                </div> 
                <div class="form-group row" style="margin-top: 10px;">
                    <label class="col-form-label col-sm-3">Qty=</label>
                    <div class="col-sm">
                        <input class="form-control" type="number" id="Q5" min="0" max="25" value="0" style="width: 100px;">
                    </div>    
                </div>    
            </div>
        </div>
        <div class="card col-3" id="r2c2" style="outline: solid gray; ">
            <div class="card-header" style="text-align: center;">
                <input class="form-check-input" type="checkbox" value="" id="Check6" onclick="myFunction6()">
            </div>
            <img src="/image/prod8.jpg" class="card-img-top" style="height: 400px;">
            <div class="card-body">
                <h3 class="card-title" id="Product6">Coola Serum</h3>
                
                <div class="form-group row">
                    <label class="col-form-label col-sm-3">Price: RS</label>
                    <div class="col-sm">
                        <input class="form-control" id="Price6" type="text" name="price" value="160" readonly style="width: 100px;">
                    </div>    
                </div> 
                <div class="form-group row" style="margin-top: 10px;">
                    <label class="col-form-label col-sm-3">Qty=</label>
                    <div class="col-sm">
                        <input class="form-control" type="number" id="Q6" min="0" max="25" value="0" style="width: 100px;">
                    </div>    
                </div>    
            </div>
        </div>
        <div class="card col-3" id="r2c3" style="outline: solid gray;;">
            <div class="card-header" style="text-align: center;">
                <input class="form-check-input" type="checkbox" value="" id="Check7" onclick="myFunction7()">
            </div>
            <img src="/image/prod9.jpg" class="card-img-top" style="height: 400px;">
            <div class="card-body">
                <h3 class="card-title" id="Product9">Cosmetas A Massage Oil</h3>
               
                <div class="form-group row">
                    <label class="col-form-label col-sm-3">Price: RS</label>
                    <div class="col-sm">
                        <input class="form-control" id="Price7" type="text" name="price" value="350" readonly style="width: 100px;">
                    </div>    
                </div> 
                <div class="form-group row" style="margin-top: 10px;">
                    <label class="col-form-label col-sm-3">Qty=</label>
                    <div class="col-sm">
                        <input class="form-control" type="number" id="Q7" min="0" max="25" value="0" style="width: 100px;">
                    </div>    
                </div>    
            </div>
        </div>
        <div class="card col-3" id="r2c4" style="outline: solid gray;;">
            <div class="card-header" style="text-align: center;">
                <input class="form-check-input" type="checkbox" value="" id="Check8" onclick="myFunction8()">
            </div>
            <img src="/image/prod10.jpg" class="card-img-top" style="height: 400px;">
            <div class="card-body">
                <h3 class="card-title" id="Product10">Babo Sunscreen</h3>
                
                <div class="form-group row">
                    <label class="col-form-label col-sm-3">Price: RS</label>
                    <div class="col-sm">
                        <input class="form-control" id="Price8" type="text" name="price" value="149" readonly style="width: 100px;">
                    </div>    
                </div> 
                <div class="form-group row" style="margin-top: 10px;">
                    <label class="col-form-label col-sm-3">Qty=</label>
                    <div class="col-sm">
                        <input class="form-control" type="number" id="Q8" min="0" max="25" value="0" style="width: 100px;">
                    </div>    
                </div>    
            </div>
        </div>
    </div>
    
    <div class="row" class="container-fluid" style=" margin-left: 1px; margin-right: 1px; margin-top: 1px; width: 100%;">
        <div class="card col-3" id="r1c1"  style="outline: solid gray;" >
            <div class="card-header" style="text-align: center;">
                <input class="form-check-input" type="checkbox" value="" id="Check9" onclick="myFunction9()">
            </div>
            <img src="/image/prod11.jpeg" class="card-img-top" style="height: 400px;">
            <div class="card-body">
                <h3 class="card-title" id="Product11">Organic Pure Aloevera Gel</h3>
                
                <div class="form-group row">
                    <label class="col-form-label col-sm-3">Price: RS</label>
                    <div class="col-sm">
                        <input class="form-control" id="Price9" type="text" name="price" value="379" readonly style="width: 100px;">
                    </div>    
                </div> 
                <div class="form-group row" style="margin-top: 10px;">
                    <label class="col-form-label col-sm-3">Qty=</label>
                    <div class="col-sm">
                        <input class="form-control" type="number" id="Q9" min="0" max="25" value="0" style="width: 100px;">
                    </div>    
                </div>    
            </div>
        </div>
        <div class="card col-3" id="r1c2" style="outline: solid gray;">
            <div class="card-header" style="text-align: center;">
                <input class="form-check-input" type="checkbox" value="" id="Check10" onclick="myFunction10()">
            </div>
            <img src="/image/prod12.jpeg" class="card-img-top" style="height: 400px;">
            <div class="card-body">
                <h3 class="card-title" id="Product10">Deyga Eye Cream</h3>
                
                <div class="form-group row">
                    <label class="col-form-label col-sm-3">Price: RS</label>
                    <div class="col-sm">
                        <input class="form-control" type="text" name="price" id="Price10" value="95" readonly style="width: 100px;">
                    </div>    
                </div> 
                <div class="form-group row" style="margin-top: 10px;">
                    <label class="col-form-label col-sm-3">Qty=</label>
                    <div class="col-sm">
                        <input class="form-control" type="number" id="Q10" min="0" max="25" value="0" style="width: 100px;">
                    </div>    
                </div>    
            </div>
        </div>
        <div class="card col-3" id="r1c3" style="outline: solid gray;">
            <div class="card-header" style="text-align: center;">
                <input class="form-check-input" type="checkbox" value="" id="Check11" onclick="myFunction11()">
            </div>
            <img src="/image/prod13.jpeg" class="card-img-top" style="height: 400px;">
            <div class="card-body">
                <h3 class="card-title" id="Product11">Organic Harvest Shampoo</h3>
              
                <div class="form-group row">
                    <label class="col-form-label col-sm-3">Price: RS</label>
                    <div class="col-sm">
                        <input class="form-control" type="text" name="price" id="Price11" value="199" readonly style="width: 100px;">
                    </div>    
                </div> 
                <div class="form-group row" style="margin-top: 10px;">
                    <label class="col-form-label col-sm-3">Qty=</label>
                    <div class="col-sm">
                        <input class="form-control" type="number" id="Q11" min="0" max="25" value="0" style="width: 100px;">
                    </div>    
                </div>    
            </div>
        </div>
        <div class="card col-3" id="r1c4" style="outline: solid gray;">
            <div class="card-header" style="text-align: center;">
                <input class="form-check-input" type="checkbox" value="" id="Check12" onclick="myFunction12()">
            </div>
            <img src="/image/prod14.jpeg" class="card-img-top" style="height: 400px;">
            <div class="card-body">
                <h3 class="card-title" id="Product12">Dr. Organic Coconut Oil</h3>
               
                <div class="form-group row">
                    <label class="col-form-label col-sm-3">Price: RS</label>
                    <div class="col-sm">
                        <input class="form-control" id="Price12" type="text" name="price" value="335" readonly style="width: 100px;">
                    </div>    
                </div> 
                <div class="form-group row" style="margin-top: 10px;">
                    <label class="col-form-label col-sm-3">Qty=</label>
                    <div class="col-sm">
                        <input class="form-control" type="number" id="Q12" min="0" max="25" value="0" style="width: 100px;">
                    </div>    
                </div>    
            </div>
        </div>
    </div>

    <div class="row" class="container-fluid" style=" margin-left: 1px; margin-right: 1px; margin-bottom: 1px; width: 100%;">
        <div class="card col-3" id="r4c1" style="outline: solid gray; ">
            <div class="card-header" style="text-align: center;">
                <input class="form-check-input" type="checkbox" value="" id="Check13" onclick="myFunction13()">
            </div>
            <img src="/image/prod15.jpeg" class="card-img-top" style="height: 400px;">
            <div class="card-body">
                <h3 class="card-title" id="Product13">Alovera Moisturizer</h3>
                
                <div class="form-group row">
                    <label class="col-form-label col-sm-3">Price: RS</label>
                    <div class="col-sm">
                        <input class="form-control" id="Price13" type="text" name="price" value="229" readonly style="width: 100px;">
                    </div>    
                </div> 
                <div class="form-group row" style="margin-top: 10px;">
                    <label class="col-form-label col-sm-3">Qty=</label>
                    <div class="col-sm">
                        <input class="form-control" type="number" id="Q13" min="0" max="25" value="0" style="width: 100px;">
                    </div>    
                </div>    
            </div>
        </div>
        <div class="card col-3" id="r4c2" style="outline: solid gray;">
            <div class="card-header" style="text-align: center;">
                <input class="form-check-input" type="checkbox" value="" id="Check14" onclick="myFunction14()">
            </div>
            <img src="/image/prod16.jpeg" class="card-img-top" style="height: 400px;">
            <div class="card-body">
                <h3 class="card-title" id="Product14">Bhingraj Shampoo</h3>
                
                <div class="form-group row">
                    <label class="col-form-label col-sm-3">Price: RS</label>
                    <div class="col-sm">
                        <input class="form-control" id="Price14" type="text" name="price" value="149" readonly style="width: 100px;">
                    </div>    
                </div> 
                <div class="form-group row" style="margin-top: 10px;">
                    <label class="col-form-label col-sm-3">Qty=</label>
                    <div class="col-sm">
                        <input class="form-control" type="number" id="Q14" min="0" max="25" value="0" style="width: 100px;">
                    </div>    
                </div>    
            </div>
        </div>
        <div class="card col-3" id="r4c3" style="outline: solid gray;">
            <div class="card-header" style="text-align: center;">
                <input class="form-check-input" type="checkbox" value="" id="Check15" onclick="myFunction15()">
            </div>
            <img src="/image/prod19.jpeg" class="card-img-top" style="height: 400px;">
            <div class="card-body">
                <h3 class="card-title" id="Product15">Organic Forest Shampoo</h3>
               
                <div class="form-group row">
                    <label class="col-form-label col-sm-3">Price: RS</label>
                    <div class="col-sm">
                        <input class="form-control" id="Price15" type="text" name="price" value="269" readonly style="width: 100px;">
                    </div>    
                </div> 
                <div class="form-group row" style="margin-top: 10px;">
                    <label class="col-form-label col-sm-3">Qty=</label>
                    <div class="col-sm">
                        <input class="form-control" type="number" id="Q15" min="0" max="25" value="0" style="width: 100px;">
                    </div>    
                </div>    
            </div>
        </div>
        <div class="card col-3" id="r4c4" style="outline: solid gray;">
            <div class="card-header" style="text-align: center;">
                <input class="form-check-input" type="checkbox" value="" id="Check16" onclick="myFunction16()">
            </div>
            <img src="/image/prod18.jpeg" class="card-img-top" style="height: 400px;">
            <div class="card-body">
                <h3 class="card-title" id="Product16">Wow Moisturizer</h3>
                
                <div class="form-group row">
                    <label class="col-form-label col-sm-3">Price: RS</label>
                    <div class="col-sm">
                        <input class="form-control" id="Price16" type="text" name="price" value="279" readonly style="width: 100px;">
                    </div>    
                </div> 
                <div class="form-group row" style="margin-top: 10px;">
                    <label class="col-form-label col-sm-3">Qty=</label>
                    <div class="col-sm">
                        <input class="form-control" type="number" id="Q16" min="0" max="25" value="0" style="width: 100px;">
                    </div>    
                </div>    
            </div>
        </div>
    </div><br>
    
    <h1 style="margin-left: 10px;">Ordered Items:</h1>
    <table class="table table-striped" style="width: 800px; margin-left: 10px;" id="table" name="table">
        <tr>
            <!-- <td><b>SR. No.</b></td> -->
            <td><b>Product Name</b></td>
            <td><b>Price</b></td>
            <td><b>Quantity</b></td>
        </tr>
    </table><br>
    <h3 style="margin-left: 10px;"> Press Below to Calculate Total Price:</h3>
    <button class="btn btn-primary" onclick="total()" style="margin-bottom: 20px; margin-left: 10px; margin-top: 10px;">Calculate</button>
     <button class="btn btn-primary" onclick="total1()" style="margin-bottom: 20px; margin-left: 10px; margin-top: 10px;">Add to Cart</button>
    

    <script type=text/javascript>

        var tp=0;
        var tp1=0;
        var tp2=0;
        var tp3=0;
        var tp4=0;
        var tp4=0;
        var tp5=0;
        var tp6=0;
        var tp7=0;
        var tp8=0;
        var tp9=0;
        var tp10=0;
        var tp11=0;
        var tp12=0;
        var tp13=0;
        var tp14=0;
        var tp15=0;
        var tp16=0;

        function myFunction1() {
        
            var checkBox1 = document.getElementById("Check1");
            //var card1 = document.getElementById("r1c1");
            
            var table = document.getElementById('table')

            var tr1 = document.createElement('tr');
            tr1.setAttribute('id','row1');

            var td1 = document.createElement('td');
            var td2 = document.createElement('td');
            var td3 = document.createElement('td');

            var q1 = document.getElementById('Q1').value;
            var price1 = parseInt(document.getElementById('Price1').value);
            tp1 = q1 * price1;


            //document.getElementById("TP").value = tp1;

            var text1 = document.createTextNode(document.getElementById('Product1').innerHTML);
            var text2 = document.createTextNode(document.getElementById('Price1').value);
            var text3 = document.createTextNode(document.getElementById('Q1').value);

            td1.appendChild(text1);
            td2.appendChild(text2);
            td3.appendChild(text3);
            tr1.appendChild(td1);
            tr1.appendChild(td2);
            tr1.appendChild(td3);
            if (checkBox1.checked == true){
        
        table.appendChild(tr1);

    } else if(checkBox1.checked == false){

        document.getElementById("row1").remove();
    }
}
  
            

        function myFunction2() {
        
        var checkBox2 = document.getElementById("Check2");
        
        var table = document.getElementById('table')

        var tr2 = document.createElement('tr');
        tr2.setAttribute('id','row2');

        var td1 = document.createElement('td');
        var td2 = document.createElement('td');
        var td3 = document.createElement('td');

        var q2 = document.getElementById('Q2').value;
        var price2 = parseInt(document.getElementById('Price2').value);
        tp2 = q2 * price2;

        var text1 = document.createTextNode(document.getElementById('Product2').innerHTML);
        var text2 = document.createTextNode(document.getElementById('Price2').value);
        var text3 = document.createTextNode(document.getElementById('Q2').value);

        td1.appendChild(text1);
        td2.appendChild(text2);
        td3.appendChild(text3);
        tr2.appendChild(td1);
        tr2.appendChild(td2);
        tr2.appendChild(td3);
// If the checkbox is checked, display the output text
        if (checkBox2.checked == true){
        
            table.appendChild(tr2);

        } else if(checkBox2.checked == false){
    
            document.getElementById("row2").remove();
        }
    }

    function myFunction3() {
        
        var checkBox3 = document.getElementById("Check3");
        
        var table = document.getElementById('table')

        var tr3 = document.createElement('tr');
        tr3.setAttribute('id','row3');

        var td1 = document.createElement('td');
        var td2 = document.createElement('td');
        var td3 = document.createElement('td');

        var q3 = document.getElementById('Q3').value;
        var price3 = parseInt(document.getElementById('Price3').value);
        tp3 = q3 * price3

        var text1 = document.createTextNode(document.getElementById('Product3').innerHTML);
        var text2 = document.createTextNode(document.getElementById('Price3').value);
        var text3 = document.createTextNode(document.getElementById('Q3').value);

        td1.appendChild(text1);
        td2.appendChild(text2);
        td3.appendChild(text3);
        tr3.appendChild(td1);
        tr3.appendChild(td2);
        tr3.appendChild(td3);
// If the checkbox is checked, display the output text
        if (checkBox3.checked == true){
        
            table.appendChild(tr3);

        } else if(checkBox3.checked == false){
    
            document.getElementById("row3").remove();
        }
    }

    function myFunction4() {
        
        var checkBox4 = document.getElementById("Check4");
        
        var table = document.getElementById('table')

        var tr4 = document.createElement('tr');
        tr4.setAttribute('id','row4');

        var td1 = document.createElement('td');
        var td2 = document.createElement('td');
        var td3 = document.createElement('td');

        var q4 = document.getElementById('Q4').value;
        var price4 = parseInt(document.getElementById('Price4').value);
        tp4 = q4 * price4

        var text1 = document.createTextNode(document.getElementById('Product4').innerHTML);
        var text2 = document.createTextNode(document.getElementById('Price4').value);
        var text3 = document.createTextNode(document.getElementById('Q4').value);

        td1.appendChild(text1);
        td2.appendChild(text2);
        td3.appendChild(text3);
        tr4.appendChild(td1);
        tr4.appendChild(td2);
        tr4.appendChild(td3);
// If the checkbox is checked, display the output text
        if (checkBox4.checked == true){
        
            table.appendChild(tr4);

        } else if(checkBox4.checked == false){
    
            document.getElementById("row4").remove();
        }
    }

    function myFunction6() {
        
        var checkBox6 = document.getElementById("Check6");
        
        var table = document.getElementById('table')

        var tr6 = document.createElement('tr');
        tr6.setAttribute('id','row6');

        var td1 = document.createElement('td');
        var td2 = document.createElement('td');
        var td3 = document.createElement('td');

        var q6 = document.getElementById('Q6').value;
        var price6 = parseInt(document.getElementById('Price6').value);
        tp6 = q6 * price6

        var text1 = document.createTextNode(document.getElementById('Product6').innerHTML);
        var text2 = document.createTextNode(document.getElementById('Price6').value);
        var text3 = document.createTextNode(document.getElementById('Q6').value);

        td1.appendChild(text1);
        td2.appendChild(text2);
        td3.appendChild(text3);
        tr6.appendChild(td1);
        tr6.appendChild(td2);
        tr6.appendChild(td3);
// If the checkbox is checked, display the output text
        if (checkBox6.checked == true){
        
            table.appendChild(tr6);

        } else if(checkBox6.checked == false){
    
            document.getElementById("row6").remove();
        }
    }

    function myFunction5() {
        
        var checkBox5 = document.getElementById("Check5");
        
        var table = document.getElementById('table')

        var tr5 = document.createElement('tr');
        tr5.setAttribute('id','row5');

        var td1 = document.createElement('td');
        var td2 = document.createElement('td');
        var td3 = document.createElement('td');

        var q5 = document.getElementById('Q5').value;
        var price5 = parseInt(document.getElementById('Price5').value);
        tp5 = q5 * price5

        var text1 = document.createTextNode(document.getElementById('Product5').innerHTML);
        var text2 = document.createTextNode(document.getElementById('Price5').value);
        var text3 = document.createTextNode(document.getElementById('Q5').value);

        td1.appendChild(text1);
        td2.appendChild(text2);
        td3.appendChild(text3);
        tr5.appendChild(td1);
        tr5.appendChild(td2);
        tr5.appendChild(td3);

        if (checkBox5.checked == true){
        
            table.appendChild(tr5);

        } else if(checkBox5.checked == false){
    
            document.getElementById("row5").remove();
        }
    }

    function myFunction7() {
        
        var checkBox7 = document.getElementById("Check7");
        
        var table = document.getElementById('table')

        var tr7 = document.createElement('tr');
        tr7.setAttribute('id','row7');

        var td1 = document.createElement('td');
        var td2 = document.createElement('td');
        var td3 = document.createElement('td');

        var q7 = document.getElementById('Q7').value;
        var price7 = parseInt(document.getElementById('Price7').value);
        tp7 = q7 * price7

        var text1 = document.createTextNode(document.getElementById('Product7').innerHTML);
        var text2 = document.createTextNode(document.getElementById('Price7').value);
        var text3 = document.createTextNode(document.getElementById('Q7').value);

        td1.appendChild(text1);
        td2.appendChild(text2);
        td3.appendChild(text3);
        tr7.appendChild(td1);
        tr7.appendChild(td2);
        tr7.appendChild(td3);
// If the checkbox is checked, display the output text
        if (checkBox7.checked == true){
        
            table.appendChild(tr7);

        } else if(checkBox7.checked == false){
    
            document.getElementById("row7").remove();
        }
    }

    function myFunction8() {
        
        var checkBox8 = document.getElementById("Check8");
        
        var table = document.getElementById('table')

        var tr8 = document.createElement('tr');
        tr8.setAttribute('id','row8');

        var td1 = document.createElement('td');
        var td2 = document.createElement('td');
        var td3 = document.createElement('td');

        var q8 = document.getElementById('Q8').value;
        var price8 = parseInt(document.getElementById('Price8').value);
        tp8 = q8 * price8

        var text1 = document.createTextNode(document.getElementById('Product8').innerHTML);
        var text2 = document.createTextNode(document.getElementById('Price8').value);
        var text3 = document.createTextNode(document.getElementById('Q8').value);

        td1.appendChild(text1);
        td2.appendChild(text2);
        td3.appendChild(text3);
        tr8.appendChild(td1);
        tr8.appendChild(td2);
        tr8.appendChild(td3);
// If the checkbox is checked, display the output text
        if (checkBox8.checked == true){
        
            table.appendChild(tr8);

        } else if(checkBox8.checked == false){
    
            document.getElementById("row8").remove();
        }
    }

    function myFunction9() {
        
        var checkBox9 = document.getElementById("Check9");
        
        var table = document.getElementById('table')

        var tr9 = document.createElement('tr');
        tr9.setAttribute('id','row9');

        var td1 = document.createElement('td');
        var td2 = document.createElement('td');
        var td3 = document.createElement('td');

        var q9 = document.getElementById('Q9').value;
        var price9 = parseInt(document.getElementById('Price9').value);
        tp9 = q9 * price9

        var text1 = document.createTextNode(document.getElementById('Product9').innerHTML);
        var text2 = document.createTextNode(document.getElementById('Price9').value);
        var text3 = document.createTextNode(document.getElementById('Q9').value);

        td1.appendChild(text1);
        td2.appendChild(text2);
        td3.appendChild(text3);
        tr9.appendChild(td1);
        tr9.appendChild(td2);
        tr9.appendChild(td3);
// If the checkbox is checked, display the output text
        if (checkBox9.checked == true){
        
            table.appendChild(tr9);

        } else if(checkBox9.checked == false){
    
            document.getElementById("row9").remove();
        }
    }

    function myFunction10() {
        
        var checkBox10 = document.getElementById("Check10");
        
        var table = document.getElementById('table')

        var tr10 = document.createElement('tr');
        tr10.setAttribute('id','row10');

        var td1 = document.createElement('td');
        var td2 = document.createElement('td');
        var td3 = document.createElement('td');

        var q10 = document.getElementById('Q10').value;
        var price10 = parseInt(document.getElementById('Price10').value);
        tp10 = q10 * price10

        var text1 = document.createTextNode(document.getElementById('Product10').innerHTML);
        var text2 = document.createTextNode(document.getElementById('Price10').value);
        var text3 = document.createTextNode(document.getElementById('Q10').value);

        td1.appendChild(text1);
        td2.appendChild(text2);
        td3.appendChild(text3);
        tr10.appendChild(td1);
        tr10.appendChild(td2);
        tr10.appendChild(td3);
// If the checkbox is checked, display the output text
        if (checkBox10.checked == true){
        
            table.appendChild(tr10);

        } else if(checkBox10.checked == false){
    
            document.getElementById("row10").remove();
        }
    }

    function myFunction11() {
        
        var checkBox11 = document.getElementById("Check11");
        
        var table = document.getElementById('table')

        var tr11 = document.createElement('tr');
        tr11.setAttribute('id','row11');

        var td1 = document.createElement('td');
        var td2 = document.createElement('td');
        var td3 = document.createElement('td');

        var q11 = document.getElementById('Q11').value;
        var price11 = parseInt(document.getElementById('Price11').value);
        tp11 = q11 * price11

        var text1 = document.createTextNode(document.getElementById('Product11').innerHTML);
        var text2 = document.createTextNode(document.getElementById('Price11').value);
        var text3 = document.createTextNode(document.getElementById('Q11').value);

        td1.appendChild(text1);
        td2.appendChild(text2);
        td3.appendChild(text3);
        tr11.appendChild(td1);
        tr11.appendChild(td2);
        tr11.appendChild(td3);
// If the checkbox is checked, display the output text
        if (checkBox11.checked == true){
        
            table.appendChild(tr11);

        } else if(checkBox11.checked == false){
    
            document.getElementById("row11").remove();
        }
    }

    function myFunction12() {
        
        var checkBox12 = document.getElementById("Check12");
        
        var table = document.getElementById('table')

        var tr12 = document.createElement('tr');
        tr12.setAttribute('id','row12');

        var td1 = document.createElement('td');
        var td2 = document.createElement('td');
        var td3 = document.createElement('td');

        var q12 = document.getElementById('Q12').value;
        var price12 = parseInt(document.getElementById('Price12').value);
        tp12 = q12 * price12

        var text1 = document.createTextNode(document.getElementById('Product12').innerHTML);
        var text2 = document.createTextNode(document.getElementById('Price12').value);
        var text3 = document.createTextNode(document.getElementById('Q12').value);

        td1.appendChild(text1);
        td2.appendChild(text2);
        td3.appendChild(text3);
        tr12.appendChild(td1);
        tr12.appendChild(td2);
        tr12.appendChild(td3);
// If the checkbox is checked, display the output text
        if (checkBox12.checked == true){
        
            table.appendChild(tr12);

        } else if(checkBox12.checked == false){
    
            document.getElementById("row12").remove();
        }
    }

    function myFunction13() {
        
        var checkBox13 = document.getElementById("Check13");
        
        var table = document.getElementById('table')

        var tr13 = document.createElement('tr');
        tr13.setAttribute('id','row13');

        var td1 = document.createElement('td');
        var td2 = document.createElement('td');
        var td3 = document.createElement('td');

        var q13 = document.getElementById('Q13').value;
        var price13 = parseInt(document.getElementById('Price13').value);
        tp13 = q13 * price13

        var text1 = document.createTextNode(document.getElementById('Product13').innerHTML);
        var text2 = document.createTextNode(document.getElementById('Price13').value);
        var text3 = document.createTextNode(document.getElementById('Q13').value);

        td1.appendChild(text1);
        td2.appendChild(text2);
        td3.appendChild(text3);
        tr13.appendChild(td1);
        tr13.appendChild(td2);
        tr13.appendChild(td3);
// If the checkbox is checked, display the output text
        if (checkBox13.checked == true){
        
            table.appendChild(tr13);

        } else if(checkBox13.checked == false){
    
            document.getElementById("row13").remove();
        }
    }

    function myFunction14() {
        
        var checkBox14 = document.getElementById("Check14");
        
        var table = document.getElementById('table')

        var tr14 = document.createElement('tr');
        tr14.setAttribute('id','row14');

        var td1 = document.createElement('td');
        var td2 = document.createElement('td');
        var td3 = document.createElement('td');

        var q14 = document.getElementById('Q14').value;
        var price14 = parseInt(document.getElementById('Price14').value);
        tp14 = q14 * price14

        var text1 = document.createTextNode(document.getElementById('Product14').innerHTML);
        var text2 = document.createTextNode(document.getElementById('Price14').value);
        var text3 = document.createTextNode(document.getElementById('Q14').value);

        td1.appendChild(text1);
        td2.appendChild(text2);
        td3.appendChild(text3);
        tr14.appendChild(td1);
        tr14.appendChild(td2);
        tr14.appendChild(td3);
// If the checkbox is checked, display the output text
        if (checkBox14.checked == true){
        
            table.appendChild(tr14);

        } else if(checkBox14.checked == false){
    
            document.getElementById("row14").remove();
        }
    }

    function myFunction15() {
        
        var checkBox15 = document.getElementById("Check15");
        
        var table = document.getElementById('table')

        var tr15 = document.createElement('tr');
        tr15.setAttribute('id','row15');

        var td1 = document.createElement('td');
        var td2 = document.createElement('td');
        var td3 = document.createElement('td');

        var q15 = document.getElementById('Q15').value;
        var price15 = parseInt(document.getElementById('Price15').value);
        tp15 = q15 * price15

        var text1 = document.createTextNode(document.getElementById('Product15').innerHTML);
        var text2 = document.createTextNode(document.getElementById('Price15').value);
        var text3 = document.createTextNode(document.getElementById('Q15').value);

        td1.appendChild(text1);
        td2.appendChild(text2);
        td3.appendChild(text3);
        tr15.appendChild(td1);
        tr15.appendChild(td2);
        tr15.appendChild(td3);
// If the checkbox is checked, display the output text
        if (checkBox15.checked == true){
        
            table.appendChild(tr15);

        } else if(checkBox15.checked == false){
    
            document.getElementById("row15").remove();
        }
    }

    function myFunction16() {
        
        var checkBox16 = document.getElementById("Check16");
        
        var table = document.getElementById('table')

        var tr16 = document.createElement('tr');
        tr16.setAttribute('id','row16');

        var td1 = document.createElement('td');
        var td2 = document.createElement('td');
        var td3 = document.createElement('td');

        var q16 = document.getElementById('Q16').value;
        var price16 = parseInt(document.getElementById('Price16').value);
        tp16 = q16 * price16

        var text1 = document.createTextNode(document.getElementById('Product16').innerHTML);
        var text2 = document.createTextNode(document.getElementById('Price16').value);
        var text3 = document.createTextNode(document.getElementById('Q16').value);

        td1.appendChild(text1);
        td2.appendChild(text2);
        td3.appendChild(text3);
        tr16.appendChild(td1);
        tr16.appendChild(td2);
        tr16.appendChild(td3);
// If the checkbox is checked, display the output text
        if (checkBox16.checked == true){
        
            table.appendChild(tr16);

        } else if(checkBox16.checked == false){
    
            document.getElementById("row16").remove();
        }
    }

    function total(){

        tp = tp1 + tp2 + tp3 + tp4 + tp5 + tp6 + tp7 + tp8 + tp9 + tp10 + tp11 + tp12 + tp13 + tp14 + tp15 + tp16 ;
        alert("Total Price is RS." +tp);

    }
    
    function total1(){

        tp = tp1 + tp2 + tp3 + tp4 + tp5 + tp6 + tp7 + tp8 + tp9 + tp10 + tp11 + tp12 + tp13 + tp14 + tp15 + tp16 ;
        //alert("Total Price is RS." +tp);
        swal("Product Added to Cart!", "Total price is Rs:"+tp, "success");
    }
    </script>
</body>
</html>