json.user_nickname @comment.user.nickname
json.created_at @comment.created_at.strftime("%Y年%m月%d日 %H時%M分")
json.content @comment.content
json.post_id @comment.post.id
json.id @comment.id

