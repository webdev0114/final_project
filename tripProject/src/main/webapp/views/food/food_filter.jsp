<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<script src="http://code.jquery.com/jquery-latest.js"></script>	
	<script type="text/javascript" src="func/location.js"></script>
 	<script type="text/javascript" src="func/room_query.js"></script>
    <script type="text/javascript">
	//	var slider = document.getElementByClassName("noUi-base");
	//	slider.noUiSlider.on('change', function(){
	//	    alert("slider");
	//	});	
		/* var minCostInput = document.getElementById('minCost'), maxCostInput = document.getElementById('maxCost');
		var slider = document.getElementById("slider"); 
		slider.noUiSlider.on('update', function( values, handle ) {
			if ( handle ) {
				maxCostInput.value = values[handle];
			} else {
				minCostInput.value = values[handle];
			}
		});

		minCostInput.addEventListener('change', function(){
			slider.noUiSlider.set([null, this.value]);
		});

		maxCostInput.addEventListener('change', function(){
			slider.noUiSlider.set([null, this.value]);
		}); */
/* //		slider.noUiSlider.on('update', function(values, handle){
//   		$(slider).trigger('update');
//		});	 */
		
		
		function placeFilter() {
			

			event.preventDefault();
			$.ajax({
				url : 'placeFilter',
				type : 'post',
				data : $('#placeForm').serializeArray(),
				success : function(data) {
					$('#placeAsync').html(data);
				}
			});
		};
	</script>
 
 <!-- Filters sidebar (Offcanvas on mobile)-->
 <aside class="col-lg-4 col-xl-3 border-top-lg border-end-lg shadow-sm px-3 px-xl-4 px-xxl-5 pt-lg-2">
   <div class="offcanvas offcanvas-start offcanvas-collapse" id="filters-sidebar">
     <div class="offcanvas-header d-flex d-lg-none align-items-center">
       <h2 class="h5 mb-0">Filters</h2>
       <button class="btn-close" type="button" data-bs-dismiss="offcanvas"></button>
     </div>
    
     <!-- Nav tabs-->
     <div class="offcanvas-body py-lg-4">
       <form onchange="placeFilter()" id="placeForm">
         <!-- Tabs content-->
         <div class="tab-content">
           <!-- Categories-->
           <!-- Filters-->
           <div class="pb-4 mb-2">
           <h3 class="h6">??????</h3>
           <select id="city" name="city" class="form-select mb-2">
             <option value="" disabled selected>??????</option>
             <option value="?????????">?????????</option>
             <option value="?????????">?????????</option>
             <option value="?????????">?????????</option>
             <option value="?????????">?????????</option>
             <option value="????????????">????????????</option>
             <option value="?????????">?????????</option>
             <option value="?????????">?????????</option>
             <option value="?????????">?????????</option>
             <option value="??????">??????</option>
           </select>
           <select id="district" name="district" class="form-select">
             <option value="" selected disabled>????????? ???????????????</option>
           </select>
         </div>
         <div class="pb-4 mb-2">
           <h3 class="h6">?????? ??????</h3>
           <div class="overflow-auto" data-simplebar data-simplebar-auto-hide="false" style="height: 11rem;">
             <div class="form-check">
               <input class="form-check-input" type="checkbox" name="act1" id="?????????" value="?????????">
               <label class="form-check-label fs-sm" for="?????????">?????????</label>
             </div>
             <div class="form-check">
               <input class="form-check-input" type="checkbox" name="act2" id="?????????" value="?????????">
               <label class="form-check-label fs-sm" for="?????????">?????????</label>
             </div>
             <div class="form-check">
               <input class="form-check-input" type="checkbox" name="act3" id="?????????" value="?????????">
               <label class="form-check-label fs-sm" for="?????????">?????????</label>
             </div>
             <div class="form-check">
               <input class="form-check-input" type="checkbox" name="act4" id="?????????" value="?????????">
               <label class="form-check-label fs-sm" for="?????????">?????????</label>
             </div>
              <div class="form-check">
               <input class="form-check-input" type="checkbox" name="act5" id="????????????" value="????????????">
               <label class="form-check-label fs-sm" for="????????????">????????????</label>
             </div>
             <div class="form-check">
               <input class="form-check-input" type="checkbox" name="act6" id="????????????" value="????????????">
               <label class="form-check-label fs-sm" for="????????????">????????????</label>
             </div>
             <div class="form-check">
               <input class="form-check-input" type="checkbox" name="act7" id="?????????" value="?????????">
               <label class="form-check-label fs-sm" for="?????????">?????????</label>
             </div>
             <div class="form-check">
               <input class="form-check-input" type="checkbox" name="act8" id="??????" value="??????">
               <label class="form-check-label fs-sm" for="??????">??????</label>
             </div>
             <div class="form-check">
               <input class="form-check-input" type="checkbox" name="act9" id="????????????" value="????????????">
               <label class="form-check-label fs-sm" for="????????????">????????????</label>
             </div>
             <div class="form-check">
               <input class="form-check-input" type="checkbox" name="act10" id="????????????" value="????????????">
               <label class="form-check-label fs-sm" for="????????????">????????????</label>
             </div>
             <div class="form-check">
               <input class="form-check-input" type="checkbox" name="act11" id="???" value=???>
               <label class="form-check-label fs-sm" for="???">???</label>
             </div>
             <div class="form-check">
               <input class="form-check-input" type="checkbox" name="act12" id="??????" value="??????">
               <label class="form-check-label fs-sm" for="??????">??????</label>
             </div>
           </div>
           <div class="pb-4 mb-2">
            <h3 class="h6">?????? ??????</h3>
             <div class="overflow-auto" data-simplebar data-simplebar-auto-hide="false" style="height: 11rem;">
               <div class="form-check">
                 <input class="form-check-input" type="checkbox" name="type1" id="??????" value="??????">
                 <label class="form-check-label fs-sm" for="??????">??????</label>
               </div>
               <div class="form-check">
                 <input class="form-check-input" type="checkbox" name="type2" id="??????" value="??????">
                 <label class="form-check-label fs-sm" for="??????">??????</label>
               </div>
               <div class="form-check">
                 <input class="form-check-input" type="checkbox" name="type3" id="??????" value="??????">
                 <label class="form-check-label fs-sm" for="??????">??????</label>
               </div>
               <div class="form-check">
                 <input class="form-check-input" type="checkbox" name="type4" id="??????" value="??????">
                 <label class="form-check-label fs-sm" for="??????">??????</label>
               </div>
               <div class="form-check">
                 <input class="form-check-input" type="checkbox" name="type5" id="?????????" value="?????????">
                 <label class="form-check-label fs-sm" for="?????????">?????????</label>
               </div>
               <div class="form-check">
                 <input class="form-check-input" type="checkbox" name="type6" id="????????????" value="????????????">
                 <label class="form-check-label fs-sm" for="????????????">????????????</label>
               </div>
               <div class="form-check">
                 <input class="form-check-input" type="checkbox" name="type7" id="?????????" value="?????????">
                 <label class="form-check-label fs-sm" for="?????????">?????????</label>
               </div>
               <div class="form-check">
                 <input class="form-check-input" type="checkbox" name="type8" id="????????????" value="????????????">
                 <label class="form-check-label fs-sm" for="????????????">????????????</label>
               </div>
               <div class="form-check">
                 <input class="form-check-input" type="checkbox" name="type9" id="???????????????" value="???????????????">
                 <label class="form-check-label fs-sm" for="???????????????">???????????????</label>
               </div>
               <div class="form-check">
                 <input class="form-check-input" type="checkbox" name="type10" id="??????" value="??????">
                 <label class="form-check-label fs-sm" for="??????">??????</label>
               </div>
               <div class="form-check">
                 <input class="form-check-input" type="checkbox" name="type11" id="????????????" value="????????????">
                 <label class="form-check-label fs-sm" for="????????????">????????????</label>
               </div>
               <div class="form-check">
                 <input class="form-check-input" type="checkbox" name="type12" id="?????????" value="?????????">
                 <label class="form-check-label fs-sm" for="?????????">?????????</label>
               </div>
               <div class="form-check">
                 <input class="form-check-input" type="checkbox" name="type13" id="?????????" value="?????????">
                 <label class="form-check-label fs-sm" for="?????????">?????????</label>
               </div>
               <div class="form-check">
                 <input class="form-check-input" type="checkbox" name="type14" id="?????????" value="?????????">
                 <label class="form-check-label fs-sm" for="?????????">?????????</label>
               </div>
               <div class="form-check">
                 <input class="form-check-input" type="checkbox" name="type15" id="?????????" value="?????????">
                 <label class="form-check-label fs-sm" for="?????????">?????????</label>
               </div>
               <div class="form-check">
                 <input class="form-check-input" type="checkbox" name="type16" id="???" value="???">
                 <label class="form-check-label fs-sm" for="???">???</label>
               </div>
               <div class="form-check">
                 <input class="form-check-input" type="checkbox" name="type17" id="??????" value="??????">
                 <label class="form-check-label fs-sm" for="??????">??????</label>
               </div>
             </div>
           </div>
          <!--  <div class="pb-4 mb-2">
            <h3 class="h6">????????????</h3>
             <div class="range-slider" data-start-min="9" data-start-max="18" data-min="1" data-max="24" data-step="1">
               <div class="range-slider-ui" onmouseup="roomFilter()"></div>
                <div class="d-flex align-items-center">
                  <div class="w-50 pe-2">
                    <div class="input-group"><span class="input-group-text fs-base">??????</span>
                      <input class="form-control range-slider-value-min" name="minHour" id="minHour" type="text">
                    </div>
                  </div>
                  <div class="w-50 ps-2">
                    <div class="input-group"><span class="input-group-text fs-base">??????</span>
                      <input class="form-control range-slider-value-max" name="maxHour" id="maxHour" type="text">
                    </div>
                  </div>
                </div>
             </div>
             <div class="input-group">
				  <input class="form-control" type="time" value="07:45">
				  <input class="form-control" type="time" value="09:00">
				  
			</div>
           </div> -->
           <div class="pb-4 mb-2">
            <h3 class="h6">??????</h3>
             <div class="form-check">
               <input class="form-check-input" type="radio" name="rate" id="5???" value="5???">
               <label class="form-check-label fs-sm align-middle mt-n2" for="5???"><span class="star-rating"><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i></span>
               </label>
             </div>
             <div class="form-check">
               <input class="form-check-input" type="radio" name="rate" id="4???" value="4???">
               <label class="form-check-label fs-sm align-middle mt-n2" for="4???"><span class="star-rating"><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star"></i></span>
               </label>
             </div>
             <div class="form-check">
               <input class="form-check-input" type="radio" name="rate" id="3???" value="3???">
               <label class="form-check-label fs-sm align-middle mt-n2" for="3-star"><span class="star-rating"><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star"></i><i class="star-rating-icon fi-star"></i></span>
               </label>
             </div>
             <div class="form-check">
               <input class="form-check-input" type="radio" name="rate" id="2???" value="2???">
               <label class="form-check-label fs-sm align-middle mt-n2" for="2-star"><span class="star-rating"><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star"></i><i class="star-rating-icon fi-star"></i><i class="star-rating-icon fi-star"></i></span>
               </label>
             </div>
             <div class="form-check">
               <input class="form-check-input" type="radio" name="rate" id="1???" value="1???">
               <label class="form-check-label fs-sm align-middle mt-n2" for="1???"><span class="star-rating"><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star"></i><i class="star-rating-icon fi-star"></i><i class="star-rating-icon fi-star"></i><i class="star-rating-icon fi-star"></i></span>
               </label>
             </div>
             <div class="border-top py-4">
               <button class="btn btn-outline-primary rounded-pill" type="button" onclick="location.href='placeList';"><i class="fi-rotate-right me-2"></i>?????? ?????????</button>
             </div>
           </div>
         </div>
         </div>
       </form>
     </div>
   </div>
 </aside>
 
 <script src="vendor/nouislider/distribute/nouislider.min.css"></script>
 <script src="vendor/nouislider/distribute/nouislider.min.js"></script>
 <script src="vendor/cleave.js/dist/cleave.min.js"></script>