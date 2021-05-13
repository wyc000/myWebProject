window.tool = window.Tool = (function(){
    class Tool{
        constructor(){
            this.flag = false;
            if(window.getComputedStyle){
                this.flag = true
            }
        }
        noConflict(){
            return this;
        }
        getStyle(ele,attr){
            if(this.flag){
                return window.getComputedStyle(ele)[attr]
            }else{
                return ele.currentStyle[attr]
            }
        }
        setStyle(ele,styleObj){
            for(var attr in styleObj){
                ele.style[attr] = styleObj[attr]
            }
        }
        random(a,b=0){
            var max = a;
            var min = b;
            if(a<b){
                max = b;
                min = a;
            }
            return Math.floor(Math.random()*(max-min))+min;
        }
        getColor(){
            return `rgb(${this.random(256)},${this.random(256)},${this.random(256)})`
        }
        bindEvent(ele,type,handler){
            if(ele.addEventListener){
                ele.addEventListener(type,handler)
            }else if(ele.attachEvent){
                ele.attachEvent('on'+type,handler)
            }else{
                ele['on'+type] = handler
            }
        }
        unBind(ele,type,handler){
            if(ele.removeEventListener){
                ele.removeEventListener(type,handler)
            }else if(ele.detachEvent){
                ele.detachEvent('on'+type,handler)
            }else{
                ele['on'+type] = null
            }
        }
        noRepeat(arr){
            for(var i=0;i<arr.length-1;i++){
                for(var j=i+1;j<arr.length;j++){
                    if(arr[i] === arr[j]){
                        arr.splice(j,1)
                        j--
                    }
                }
            }
        }
        animate(ele,obj,callback){
            let k = 0
            let n = 0
            for(let attr in obj){
                k++;
                let target = obj[attr]
                if(attr === 'opacity'){
                    target *= 100
                }
                let timerId = setInterval(()=>{
                    let currentStyle = this.getStyle(ele,attr)
                    if(attr === 'opacity'){
                        currentStyle *= 100
                    }
                    currentStyle = parseInt(currentStyle)
                    let speed = (target - currentStyle)/20
                    if(speed>0){
                        speed = Math.ceil(speed)
                    }else{
                        speed = Math.floor(speed)
                    }
                    currentStyle += speed;
                    if(attr === 'opacity'){
                        ele.style[attr] = currentStyle/100
                    }else{
                        ele.style[attr] = currentStyle + "px"
                    }
                    if(currentStyle === target){
                        clearInterval(timerId)
                        n++;
                        if(n === k){
                            callback()
                        }
                    }
                },20)
            }
        }
        sendAjax(obj){
            if(!obj.url){
                throw new Error('地址必传')
            }
            if(Object.prototype.toString.call(obj.url) !== '[object String]'){
                throw new Error('地址必须正确')
            }
            if(!obj.method){
                obj.method = 'get';
            }
            if(obj.method.toLowerCase()!=='get' && obj.method.toLowerCase()!=='post'){
                throw new Error('请求方式错误')
            }
            if(obj.async === undefined){
                obj.async = true
            }
            if(Object.prototype.toString.call(obj.async) !== '[object Boolean]'){
                throw new Error('async必须是布尔值')
            }
            var data;
            if(obj.data){
                if(Object.prototype.toString.call(obj.data) !== '[object String]'){
                    data = obj.data
                }else if(Object.prototype.toString.call(obj.data) !== '[object Object]'){
                    data = '';
                    for(var attr in obj.data){
                        data += '&' + attr + '=' + obj.data[attr]
                    }
                    data = data.slice(1)
                }else{
                    throw new Error('数据必须是字符串或对象')
                }
                if(obj.method.toLowerCase() === 'get'){
                    obj.url += '?' + data
                }
            }
            if(!obj.success){
                obj.success = function(){}
            }
            if(!obj.error){
                obj.error = function(){}
            }
            if(Object.prototype.toString.call(obj.success) !== '[object Function]'){
                throw new Error('success必须是函数')
            }
            if(Object.prototype.toString.call(obj.error) !== '[object Function]'){
                throw new Error('error必须是函数')
            }
            if(!obj.dataType){
                obj.dataType = 'json';
            }
            if(obj.dataType.toLowerCase()!=='json' && obj.dataType.toLowerCase()!=='string' && obj.dataType.toLowerCase()!=='xml'){
                throw new Error('dataType必须是string或json或xml')
            }
            var xhr = new XMLHttpRequest()
            xhr.onreadystatechange = function(){
                if(xhr.readyState === 4){
                    if(xhr.status>=200 && xhr.status<300){
                        switch(obj.dataType.toLowerCase()){
                            case 'json':
                                var res = xhr.responseText;
                                res = JSON.parse(res)
                            break;
                            case 'string':
                                var res = xhr.responseText;
                            break;
                            case "xml":
                                var res = xhr.responseXML;
                            break;  
                        }
                        obj.success(res)
                    }else{
                        obj.error()
                    }
                }
            }
            xhr.open(obj.method,obj.url,obj.async)
            if(obj.data && obj.method.toLowerCase()==='post'){
                xhr.setRequestHeader('content-type','application/x-www-form-urlencoded')
                xhr.send(data)
                return false;
            }
            xhr.send()
        }
        promiseAjax(obj){
            return new Promise(function(resolve,reject){
                if(!obj.url){
                    throw new Error('地址必传')
                }
                if(Object.prototype.toString.call(obj.url) !== '[object String]'){
                    throw new Error('地址必须正确')
                }
                if(!obj.method){
                    obj.method = 'get';
                }
                if(obj.method.toLowerCase()!=='get' && obj.method.toLowerCase()!=='post'){
                    throw new Error('请求方式错误')
                }
                if(obj.async === undefined){
                    obj.async = true
                }
                if(Object.prototype.toString.call(obj.async) !== '[object Boolean]'){
                    throw new Error('async必须是布尔值')
                }
                var data;
                if(obj.data){
                    if(Object.prototype.toString.call(obj.data) !== '[object String]'){
                        data = obj.data
                    }else if(Object.prototype.toString.call(obj.data) !== '[object Object]'){
                        data = '';
                        for(var attr in obj.data){
                            data += '&' + attr + '=' + obj.data[attr]
                        }
                        data = data.slice(1)
                    }else{
                        throw new Error('数据必须是字符串或对象')
                    }
                    if(obj.method.toLowerCase() === 'get'){
                        obj.url += '?' + data
                    }
                }
                if(!obj.dataType){
                    obj.dataType = 'json';
                }
                if(obj.dataType.toLowerCase()!=='json' && obj.dataType.toLowerCase()!=='string' && obj.dataType.toLowerCase()!=='xml'){
                    throw new Error('dataType必须是string或json或xml')
                }
                var xhr = new XMLHttpRequest()
                xhr.onreadystatechange = function(){
                    if(xhr.readyState === 4){
                        if(xhr.status>=200 && xhr.status<300){
                            switch(obj.dataType.toLowerCase()){
                                case 'json':
                                    var res = xhr.responseText;
                                    res = JSON.parse(res)
                                break;
                                case 'string':
                                    var res = xhr.responseText;
                                break;
                                case "xml":
                                    var res = xhr.responseXML;
                                break;  
                            }
                            resolve(res)
                        }else{
                            reject()
                        }
                    }
                }
                xhr.open(obj.method,obj.url,obj.async)
                if(obj.data && obj.method.toLowerCase()==='post'){
                    xhr.setRequestHeader('content-type','application/x-www-form-urlencoded')
                    xhr.send(data)
                    return false;
                }
                xhr.send()
            })
        }
        setCookie(key,value,seconds,path="/"){
            document.cookie = `${key}=${value};max-age=${seconds};path=${path}`
        }
        getCookie(key){
            var arr = document.cookie.split('; ')
            for(var i=0;i<arr.length;i++){
                var brr = arr[i].split('=')
                if(key === brr[0]){
                    return brr[1]
                }
            }
        }
        removeCookie(key,path="/"){
            this.setCookie(key,null,0,path)
        }
        jsonp(url,data,fnname,key,fn){
            var script = document.createElement('script')
            url += '?';
            var f = '';
            data[key] = fnname
            for(var attr in data){
                url += f + attr + '=' + data[attr]
                f = '&'
            }
            window[fnname] = fn
            script.setAttribute('src',url)
            document.head.appendChild(script)
            document.head.removeChild(script)
        }
    }
    var tool;
    return (function(){
        if(!tool){
            tool = new Tool()
        }
        return tool;
    })()
})()