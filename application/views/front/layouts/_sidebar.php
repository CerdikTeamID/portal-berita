<div class="col-lg-4">
   <div class="right_sidebar">

      <aside class="r_widgets news_widgets">
         <div class="main_title2">
            <h2>Most Popular News</h2>
         </div>
         <div class="choice_item">
            <img class="img-fluid" src="<?= base_url("images/posting/large/$popular->photo") ?>" alt="">
            <div class="choice_text">
               <div class="date">
                  <a class="gad_btn" href="<?= base_url("blog/category/$popular->slug") ?>"><?= $popular->category_name ?></a>
                  <a href="#" class="float-right"><i class="fa fa-calendar" aria-hidden="true"></i><?= mediumdate_indo($popular->date) ?></a>
               </div>
               <a href="<?= base_url("blog/read/$popular->seo_title") ?>"><h4><?= $popular->title ?></h4></a>
               <p><?= character_limiter($popular->content, 150) ?></p>
            </div>
         </div>

         <div class="main_title2 mb-5">
            <h2>Trending Now</h2>
         </div>
         <div class="news_slider owl-carousel">
            <?php foreach($trending as $t) : ?>
               <div class="item">
                  <div class="choice_item">
                     <img src="<?= base_url('images/posting/xsmall/' . $t->photo) ?>" alt="">
                     <div class="choice_text">
                        <a href="<?= base_url("blog/read/$t->seo_title") ?>">
                           <h4><?= $t->title ?></h4>
                        </a>
                        <div class="date">
                           <a href="<?= base_url("blog/read/$t->seo_title") ?>"><i class="fa fa-calendar" aria-hidden="true"></i><?= mediumdate_indo($t->date) ?></a>       
                        </div>
                     </div>
                  </div>
               </div>
            <?php endforeach ?>
         </div>
      </aside>

      <aside class="r_widgets social_widgets mt-5">
         <div class="main_title2">
            <h2>Social Networks</h2>
         </div>
         <i class="fa-brands fa-square-instagram"></i>
         <ul class="list">
            <li>
               <a href="https://www.facebook.com/diskominfokabupatenbekasi/?ti=as">
                  <i class="fa fa-facebook"></i>
                  Pemerintah Kota Bekasi
                     <span>Like our page</span>
               </a>
            </li>
            <li>
               <a href="https://twitter.com/diskomkabbekasi?t=3qQA7dxqg0H3KF3bn8bQfg&amp;s=09">
                  <i class="fa fa-twitter"></i>
                  Pemerintah Kota Bekasi
                     <span>Follow Us</span>
               </a>
            </li>
            <li>
               <a href="https://www.instagram.com/diskominfosantik_bekasikab/?utm_medium=copy_link">
                  <i class="fa fa-instagram" style="background-color: #f44a40"></i>
                  Pemerintah Kota Bekasi
                  <span>Follow Us</span>
               </a>
            </li>
            <li>
               <a href="https://www.youtube.com/channel/UCtw-b1K9o2BeUZwD9Qzqfnw">
                  <i class="fa fa-youtube-play"></i>
                  Pemerintah Kota Bekasi
                     <span>Subscribe</span>
               </a>
            </li>
         </ul>
      </aside>

   </div>
</div>