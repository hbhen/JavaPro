function validteCode()
{
    var codes = new Array(4);       //���ڴ洢�����֤��
    var colors = new Array("Red","Green","Gray","Blue","Maroon","Aqua","Fuchsia","Lime","Olive","Silver");
    for(var i=0;i < codes.length;i++)
    {//��ȡ�����֤��
        codes[i] = Math.floor(Math.random()*10);
    }
    var spans = document.getElementById("divCode").all;
    for(var i=0;i<spans.length;i++)
    {
        spans[i].innerHTML=codes[i];
        spans[i].style.color = colors[Math.floor(Math.random()*10)];    //���������֤����ɫ
        
    }
 
}
document.onload = validteCode();