/*
	提供列表的数据结构
*/
function List(){
	this.listSize = 0;
	this.pos = 0;
	this.dataStore = [];
}
List.prototype = {
	constructor: List,
	/*
		给队列添加元素
	*/
	append: function(element){
		this.dataStore[this.listSize++] = element;
	},
	/*
		从列表中查找某一个元素
	*/
	find: function(element){
		for(var i = 0;i<this.dataStore.length; ++i){
			if(this.dataStore[i] == element){
				return i
			}
		}
		return -1;
	},
	/*
		从列表中删除元素，删除成功返回true，失败返回false
	*/
	remove: function(element){
		var foundAt = this.find(element);
		if(foundAt > -1){
			this.dataStore.splice(foundAt,1);
			--this.listSize;
			return true;
		}
		return false;
	},
	/*
		返回列表中有多少元素
	*/
	length: function(){
		return this.listSize
	},
	/*
		显示列表中的元素(返回一个数组状态)
	*/
	toString: function(){
		return this.dataStore;
	},
	/*
		向列表中插入一个元素(插入成功返回true，失败返回false)
		element:待插入元素
		after:定位元素
	*/
	insert: function(element,after){
		var insertPos = this.find(after);
		if(insertPos > -1){
			this.dataStore.splice(insertPos + 1,0,element);
			++this.listSize;
			return true;
		}	
		return false;
	},
	/*
		清空列表中所有元素
	*/
	clear: function(){
		delete this.dataStore;
		this.dataStore = [];
		this.listSize = this.pos = 0;
	},
	/*
		判断给定值是否在列表中，存在返回true，否则返回false。
	*/
	contains: function(element){
		for(var i = 0;i<this.dataStore.length;++i){
			if(this.dataStore[i] == element){
				return true;
			}
		}
		return false;
	},
	/*
		归零标识
	*/
	front: function(){
		this.pos = 0;
	},
	/*
		将标识归底
	*/
	end: function(){
		this.pos = this.listSize - 1;
	},
	/*
		标识减一
	*/
	prev: function(){
		if(this.pos > 0){
			--this.pos;
		}
	},
	/*
		标识加一
	*/
	next: function(){
		if(this.pos < this.listSize-1){
			++this.pos;
		}
	},
	/*
		返回当前标识
	*/
	currPos: function(){
		return this.pos;
	},
	/*
		设定标识位置
	*/
	moveTo: function(position){
		this.pos = position;
	},
	/*
		返回当前标识所指的元素
	*/
	getElement: function(){
		return this.dataStore[this.pos];
	}
};