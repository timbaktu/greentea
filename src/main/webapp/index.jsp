<html>
   <head>
   	  <link rel="stylesheet" href="./mdl/test.css">
   	  <link rel="stylesheet" href="./mdl/material.min.css">
      <script src="./mdl/material.min.js"></script>
      <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
   </head>
   <body>
    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
      <header class="mdl-layout__header">
         <div class="mdl-layout__header-row">      
            <span class="mdl-layout-title">FitTransform</span>          
         </div>       
      </header>     
      <main class="mdl-layout__content">    
         <div class="mdl-tabs mdl-js-tabs">
            <div class="mdl-tabs__tab-bar">
               <a href="#tab1-panel" class="mdl-tabs__tab is-active">Home</a>
               <a href="#tab2-panel" class="mdl-tabs__tab">Get a Plan</a>
               <a href="#tab3-panel" class="mdl-tabs__tab">About Us</a>
            </div>
            <div class="mdl-tabs__panel is-active" id="tab1-panel">
               <p>The Rock says... Eat Protein</p>
            </div>
            <div class="mdl-tabs__panel" id="tab2-panel">
               <p>Tab 2 Content</p>
            </div>
            <div class="mdl-tabs__panel" id="tab3-panel">
               <p>Tab 3 Content</p>
            </div>
         </div>
     <style>    
.mdl-grid {
    max-width: 600px;
}
.mdl-card__media {
    margin: 0;
    
}
.mdl-card__media > img {
    max-width: 100%;
}
.mdl-card__actions {
    display: flex;
    box-sizing:border-box;
    align-items: center;
}
.mdl-card__actions > .mdl-button--icon {
    margin-right: 3px;
    margin-left: 3px;
}
</style>
    <main class="mdl-layout__content">
        <div class="mdl-grid mdl-typography--text-center " >
            <div class="mdl-card mdl-cell mdl-cell--6-col mdl-cell--4-col-tablet mdl-shadow--2dp ">
                <figure class="mdl-card__media" >
                    <img src="./img/TheRock.jpg" alt=""  height="200" width="300"  align="middle"/>
                </figure>
                <div class="mdl-card__title">
                    <h1 class="mdl-card__title-text">Workout Mode</h1>
                </div>
                <div class="mdl-card__supporting-text">
                    <p>Join the Lean Program and go lean.</p>
                </div>
                                <div class="mdl-card__actions mdl-card--border">
    <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">Read More</a>
    <div class="mdl-layout-spacer"></div>
        <button class="mdl-button mdl-button--icon mdl-button--colored"><i class="material-icons">favorite</i></button>
                    <button class="mdl-button mdl-button--icon mdl-button--colored"><i class="material-icons">share</i></button>
      </div>
            </div>
            
            
            
            <div class="mdl-card mdl-cell mdl-cell--6-col mdl-cell--4-col-tablet mdl-shadow--2dp">
                <figure class="mdl-card__media">
                    <img src="./img/healthy.jpeg" alt=""   height="200" width="300"  align="middle"/>
                </figure>
                <div class="mdl-card__title">
                    <h1 class="mdl-card__title-text">Food Plan</h1>
                </div>
                <div class="mdl-card__supporting-text">
                    <p>Eat heavy and see the difference.</p>
                </div>
                <div class="mdl-card__actions mdl-card--border">
    <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">Read More</a>
    <div class="mdl-layout-spacer"></div>
        <button class="mdl-button mdl-button--icon mdl-button--colored"><i class="material-icons">favorite</i></button>
                    <button class="mdl-button mdl-button--icon mdl-button--colored"><i class="material-icons">share</i></button>
      </div>
            </div>
        </div>
    </main>
			
          <footer class="mdl-mini-footer">
            <div class="mdl-mini-footer__left-section">
               <div class="mdl-logo">
                  Copyright Information
               </div>
               <ul class="mdl-mini-footer__link-list">
                  <li><a href="#">Help</a></li>
                  <li><a href="#">Privacy and Terms</a></li>
                  <li><a href="#">User Agreement</a></li>
               </ul>
            </div>
         </footer>
	  </main>
   </body>
</html>