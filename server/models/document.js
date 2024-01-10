const mongoose=require('mongoose');
const documentSchema=mongoose.Schema({
uid:{
    required:true,
    type:String
},
createdAt:{
    required:true,
    type:Number
},
title:{
    required:true,
    type:String,
    trim:true
},
content:{
    default:[],
    type:Array
}
});

const Document=mongoose.model('Document',documentSchema);

module.exports=Document;