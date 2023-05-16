import { LightningElement } from 'lwc';

export default class FindOutlargetNumber extends LightningElement {
    IntPut1;
    IntPut2;
    IntPut3;

    FirstNumber(event){
        this.IntPut1=event.target.value;
    }
    SecondNumber(event){
        this.IntPut2=event.target.value;
    }
    ThirdNumber(event){
        this.IntPut3=event.target.value;
    }
    submit(event){
        const Num1= parseInt(this. IntPut1);
        const Num2= parseInt(this. IntPut2);
        const Num3= parseInt(this. IntPut3);
        
        if(Num1 > Num2 && Num1>Num3){
            alert('Fist value is hegest value');
        }else if(Num2 >Num1 && Num2>Num3){
            alert('Second value is hegest value');
        }else if(Num3>Num1 && Num3>Num2){
          alert('Trid value is height');
        }
    }

}