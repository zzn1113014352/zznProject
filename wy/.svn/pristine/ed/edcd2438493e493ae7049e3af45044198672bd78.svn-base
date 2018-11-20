$(function(){
    $('#userCenter').hover(function(){
        $('.userCenterSelect').show().find('.spanHover').unbind('click');
        $('.userCenterSelect').show().find('.spanHover').bind('click',function(){
            var item = $(this).attr('item');
            if( item == 'information' ){
                $('#main-content').html('').load('info.html #userInfo',function(){
                    informationChange();
                });
            }else if( item == 'safety' ){
                $('#main-content').html('').load('info.html #safety');
            }else if( item == 'intro' ){
                $('#main-content').html('').load('info.html #versionIntro');
            }
        });
        $('.userCenterSelect').show().find('.spanHover').hover(function(){
            var item = $(this).attr('item');
            if( item == 'information' ){
                $(this).find('img').attr('src','assets/images/icon/detailHover.png');
            }else if( item == 'safety' ){
                $(this).find('img').attr('src','assets/images/icon/s.png');
            }else if( item == 'intro' ){
                $(this).find('img').attr('src','assets/images/icon/k.png');
            }else if( item == 'exit' ){
                $(this).find('img').attr('src','assets/images/icon/f.png');
            }
        },function(){
            $('.userCenterSelect').show().find('.spanHover[item="information"]').find('img').attr('src','assets/images/icon/detail.png');
            $('.userCenterSelect').show().find('.spanHover[item="safety"]').find('img').attr('src','assets/images/icon/safe.png');
            $('.userCenterSelect').show().find('.spanHover[item="intro"]').find('img').attr('src','assets/images/icon/version.png');
            $('.userCenterSelect').show().find('.spanHover[item="exit"]').find('img').attr('src','assets/images/icon/exit.png');
        })
    },function(){
        $('.userCenterSelect').hide();
    });
    //修改
    $('#accountCenter').find('img').click(function(){
        $('#main-content').html('').load('notice.html #system');
    });
    //$('#accountCenter').hover(function(){
    //    $('.accountCenterSelect').show().find('span').unbind('click');
    //    $('.accountCenterSelect').show().find('span').bind('click',function(){
    //        var item = $(this).attr('item');
    //        if( item == 'system' ){
    //            $('#main-content').html('').load('notice.html #system');
    //        }else if( item == 'service' ){
    //            $('#main-content').html('').load('notice.html #service');
    //        }
    //    });
    //    $('.accountCenterSelect').show().find('.spanHover').hover(function(){
    //        var item = $(this).attr('item');
    //        if( item == 'system' ){
    //            $(this).find('img').attr('src','assets/images/icon/systemHover.png');
    //        }else if( item == 'service' ){
    //            $(this).find('img').attr('src','assets/images/icon/noticeHover.png');
    //        }
    //    },function(){
    //        $('.accountCenterSelect').show().find('.spanHover[item="system"]').find('img').attr('src','assets/images/icon/system.png');
    //        $('.accountCenterSelect').show().find('.spanHover[item="service"]').find('img').attr('src','assets/images/icon/notice.png');
    //    })
    //},function(){
    //    $('.accountCenterSelect').hide();
    //});
    
    ////分页
	//layui.use(['laypage', 'layer'], function() {
	//	var laypage = layui.laypage,
	//		layer = layui.layer;
    //
	//	//完整功能
	//	laypage.render({
	//		elem: 'demo7',
	//		count: 100,
	//		layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip'],
	//		jump: function(obj) {
	//			console.log(obj)
	//		}
	//	});
    //
	//});
});
function informationChange(){
    $('li img').click(function(){
        var idName = $(this).siblings('input').attr('id');
        if( idName == 'sex' ){
            $(this).siblings('input').hide();
            $('#sexSelect').show();
        }else if( idName == 'district' ){
            $(this).siblings('input').hide();
            $('#city').show().citySelect({
                prov: "陕西",
                city: "西安",
                dist: "雁塔区",
                nodata: "none"
            });
        }
        $(this).siblings('input').removeAttr('readonly').css('border','1px solid #e1e1e1');
    });
    $('.order').click(function(){
        $('input').attr('readonly','readonly').css('border','none').show();
        $('#sexSelect').hide();
        $('#city').hide();
    });
    //获取上传按钮
    var input1 = document.getElementById("upload");
    console.log(input1);
    if(typeof FileReader==='undefined'){
        //result.innerHTML = "抱歉，你的浏览器不支持 FileReader";
        input1.setAttribute('disabled','disabled');
    }else{
        input1.addEventListener('change',readFile,false);
        /*input1.addEventListener('change',function (e){
         console.log(this.files);//上传的文件列表
         },false); */
    }
    function readFile(){
        var file = this.files[0];//获取上传文件列表中第一个文件
        if(!/image\/\w+/.test(file.type)){
            //图片文件的type值为image/png或image/jpg
            alert("文件必须为图片！");
            return false;
        }
        // console.log(file);
        var reader = new FileReader();//实例一个文件对象
        reader.readAsDataURL(file);//把上传的文件转换成url
        //当文件读取成功便可以调取上传的接口
        reader.onload = function(e){
            // console.log(this.result);//文件路径
            // console.log(e.target.result);//文件路径
            /*var data = e.target.result.split(',');
             var tp = (file.type == 'image/png')? 'png': 'jpg';
             var imgUrl = data[1];//图片的url，去掉(data:image/png;base64,)
             //需要上传到服务器的在这里可以进行ajax请求
             // console.log(imgUrl);
             // 创建一个 Image 对象
             var image = new Image();
             // 创建一个 Image 对象
             // image.src = imgUrl;
             image.src = e.target.result;
             image.onload = function(){
             document.body.appendChild(image);
             }*/

            var image = new Image();
            // 设置src属性
            image.src = e.target.result;
            var max=200;
            // 绑定load事件处理器，加载完成后执行，避免同步问题
            image.onload = function(){
                // 获取 canvas DOM 对象
                var canvas = document.getElementById("cvs");
                // 如果高度超标 宽度等比例缩放 *=
                /*if(image.height > max) {
                 image.width *= max / image.height;
                 image.height = max;
                 } */
                // 获取 canvas的 2d 环境对象,
                var ctx = canvas.getContext("2d");
                // canvas清屏
                ctx.clearRect(0, 0, canvas.width, canvas.height);
                // 重置canvas宽高
                /*canvas.width = image.width;
                 canvas.height = image.height;
                 if (canvas.width>max) {canvas.width = max;}*/
                // 将图像绘制到canvas上
                // ctx.drawImage(image, 0, 0, image.width, image.height);
                ctx.drawImage(image, 0, 0, 121, 121);
                // 注意，此时image没有加入到dom之中
                $('#cvs').show();
                $('.imgUpload').hide();
            };
        }
    }
}