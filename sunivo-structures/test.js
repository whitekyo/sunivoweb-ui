/**
 * Created with JetBrains WebStorm.
 * User: Yangchen
 * Date: 14-11-7
 * Time: 下午10:10
 * To change this template use File | Settings | File Templates.
 */
function CArray(numElements){
    this.dataStore = [];
    this.pos = 0;
    this.numElements = numElements;
    this.insert = insert;
    this.toString = toString;
    this.clear = clear;
    this.setData = setData;
    this.swap = swap;
    this.bubbleSort = bubbleSort;
    this.selectionSort = selectionSort;
    this.insertionSort = insertionSort;
    this.shellSort = shellSort;
    this.qSort = qSort;
    this.gaps = [5,3,1];
    for(var i =0;i<numElements;++i){
        this.dataStore[i] = i;
    }
}
function setData(){
    for(var i=0;i<this.numElements;++i){
        this.dataStore[i] = Math.floor(Math.random() * (this.numElements + 1));
    }
}
function clear(){
    for(var i =0;i<this.dataStore.length;++i){
        this.dataStore[i] = 0;
    }
}
function insert(element){
    this.dataStore[this.pos++] = element;
}
function toString(){
    var restr = '';
    for(var i=0;i<this.dataStore.length;++i){
        restr += this.dataStore[i] + ' ';
        if(i >0& i%10 == 0){
            restr += '\n';
        }
    }
    return restr;
}
function swap(arr,index1,index2){
    var temp = arr[index1];
    arr[index1] = arr[index2];
    arr[index2] = temp;
}
function setGaps(arr){
    this.gaps = arr;
}
/**
 * 冒泡排序
 */
function bubbleSort(){
    var numElements = this.dataStore.length;
    for(var outer = numElements;outer >= 2; --outer){
        for(var inner = 0; inner < outer - 1;++inner){
            if(this.dataStore[inner] > this.dataStore[inner + 1]){
                swap(this.dataStore,inner,inner + 1);
                //console.log(this.toString());
            }
        }

    }
}
/**
 * 选择排序
 */
function selectionSort(){
    var min;
    for(var outer =0;outer <= this.dataStore.length-2;++outer){
        min = outer;
        for(var inner = outer + 1;inner <= this.dataStore.length-1;++inner){
            if(this.dataStore[inner] <= this.dataStore[min]){
                min = inner;
                swap(this.dataStore,outer,min);
            }
        }
    }
}
/**
 * 插入排序
 */
function insertionSort(){
    var temp,inner;
    for(var outer = 1;outer<= this.dataStore.length - 1;++outer){
        temp = this.dataStore[outer];
        inner = outer;
        while(inner > 0 && (this.dataStore[inner - 1] >= temp)){
            this.dataStore[inner] = this.dataStore[inner - 1];
            --inner;
        }
        this.dataStore[inner] = temp;
    }
}
function shellSort(){
    for(var g =0;g<this.gaps.length;++g){
        for(var i=this.gaps[g];i<this.dataStore.length;++i){
            var temp = this.dataStore[i];
            for(var j =i; j>=this.gaps[g] && this.dataStore[j - this.gaps[g]] >temp; j -= this.gaps[g]){
                this.dataStore[j] = this.dataStore[j - this.gaps[g]];
            }
            this.dataStore[j] = temp;
        }
    }
}
/**
 * 快速排序
 */
function qSort(arr){
    if(arr.length == 0){
        return [];
    }
    var left = [];
    var right = [];
    var pivot = arr[0];
    for(var i=1;i<arr.length;i++){
        if(arr[i] < pivot){
            left.push(arr[i]);
        }else{
            right.push(arr[i]);
        }
    }
    return qSort(left).concat(pivot,qSort(right));
}

var numElements = 5;
var myNums = new CArray(numElements);
myNums.setData();
//console.log(myNums.toString());
//console.log('----------------------------');
myNums.insertionSort();
//console.log(myNums.toString());
console.log(qSort([2,1,3]));