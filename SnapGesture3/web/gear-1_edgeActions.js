
(function($,Edge,compId){var Composition=Edge.Composition,Symbol=Edge.Symbol;
//Edge symbol: 'stage'
(function(symbolName){})("stage");
//Edge symbol end:'stage'
})(jQuery,AdobeEdge,"EDGE-52110115");(function($){document.addEventListener('touchcancel',touchDefault,false);document.addEventListener('touchstart',touchDefault,false);document.addEventListener('touchmove',touchDefault,false);document.addEventListener('touchend',touchDefault,false);function touchDefault(e){e.preventDefault();}})();var gearRotate=0;function rotateRight(){gearRotate+=30;$("#Stage_gearicon_03").css("-webkit-transform","rotate("+gearRotate+"deg)");}
function rotateLeft(){gearRotate-=30;$("#Stage_gearicon_03").css("-webkit-transform","rotate("+gearRotate+"deg)");}