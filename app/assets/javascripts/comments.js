$(function(){
  attachEventListeners()


  class Comment {
    constructor(i) {
    this.id = i.id;
    this.content = i.content;
    this.post_id = i.post_id;
  }
}


Comment.prototype.renderComment = function() {
  let commentHtml =
  `
  <li>${this.content}</li>
  `
  return commentHtml
}

function getComments(e) {
  e.preventDefault();
    $("div.comments-list").html("")
     $.get(this.href, function(data) {
       data.comments.sort(function(a, b) {
         var contentA = a.content.toUpperCase();
         var contentB = b.content.toUpperCase();
         if (contentA < contentB) {
           return -1;
         }
         if (contentA > contentB) {
           return 1;
         }
         return 0;
       })
         data.comments.forEach(commentNew => {
          let lc = new Comment(commentNew).renderComment()
          let id = commentNew.id
       $("div.comments-list").append(lc)
     })
   }, 'json')
   }

function createComments(e) {
   e.preventDefault();
    $.ajax({
      type: ($("input[name='_method']").val() || this.method),
      url: this.action,
      dataType: "json",
      data: $(this).serialize(),
      success: function(data){
        const commentData = data.comments
        const newComment = new Comment(commentData)
        let nc = newComment.renderComment()
        let id = newComment.post_id
        $("div.comments-list").append(nc)
      }
    })
  }

function attachEventListeners() {

    $('a.load-comments').on('click', getComments)

      $('a.hide-comments').click(function(){
        $("div.comments-list").toggle(false);
      });

    $("#new-comment").on("submit", createComments)
}
})
