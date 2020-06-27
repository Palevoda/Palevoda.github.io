//Задание 1
function task1()
{
for (i = 0; i < document.all.length; i++)
{
alert(document.all[i].tagName);
//document.write(document.all[i].tagName);
}
}
//Задание 2
//alert(document.body.childNodes.length);
function task2()
{
for (var i = 0; i < document.body.childNodes.length; i++)  
{
//alert(document.body.childNodes[i].tagName);    ??? че за херь с undefined?
alert(document.body.children[i].tagName);
}
}

function task3()
{
    for(i = 0; i < document.all.length; i++)
    {
        if (document.all[i] == '[object HTMLSpanElement]') alert('Способ 1: ' + document.all[i].innerHTML);
    }

  
   for (k = 0; k <  document.getElementsByTagName("span").length; k++)
   alert('Способ 2: ' +   document.getElementsByTagName("span")[k].innerHTML);
    
    alert('способ 3: ' + document.getElementById('spanforjs1').innerHTML);
    alert('способ 3: ' + document.getElementById('spanforjs2').innerHTML);
    alert('способ 3: ' + document.getElementById('spanforjs3').innerHTML);

}

function task4()
{
  len = document.getElementsByTagName('td').length;
  var sum = 0, num = 0;
   
   marks = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   for (i = 0; i < len; i++)
   {
       element = document.getElementsByTagName('td')[i].innerHTML;
       for (j = 0; j < 12; j++ )
       {
       if (element == marks[j])
       {
           sum = sum + +element;
           num++;
       }
       }     
   }
   document.getElementById('spanforjs2').innerHTML = sum/num;
   alert('Измененное содержимое в span2: ' + document.getElementById('spanforjs2').innerHTML);

   alert('Средний балл: ' + (sum/num));

  // alert(document.getElementsByTagName('td')[19].innerHTML);
   
}

