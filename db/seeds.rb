hello = User.new(username: "i_am_smart_philosopher", email: "smarty@gmail.com", password: "123456", password_confirmation: "123456", first_name: "Michael", last_name: "Scofield")
hi = User.new(username: "greek_boi_ancient", email: "aristo@gmail.com", password: "123456", password_confirmation: "123456", first_name: "Mister T", last_name:"Knowles")

hello.save
hi.save

Linqe.create(
  title: "Alt-Right Explained",
  url: "http://www.vox.com/2016/4/18/11434098/alt-right-explained",
  slug: "alt-right-explained",
  submitter_id: 1,
  description: "The alt-right is more than warmed-over white supremacy. It’s that, but way way weirder.")

Linqe.create(
  title:"The World Wide Cage",
  url: "https://aeon.co/essays/the-internet-as-an-engine-of-liberation-is-an-innocent-fraud",
  slug: "the-internet-as-an-engine-of-liberation-is-an-innocent-fraud",
  submitter_id: 2,
  description: "Technology promised to set us free. Instead it has trained us to withdraw from the world into distraction and dependency")

Comment.create(content: "cool story bro", linqe_id: 1, commenter_id: 2)
Comment.create(content: "interesting", linqe_id: 2, commenter_id: 1)
Comment.create(content: "tru", linqe_id: 1, commenter_id: 1)
Comment.create(content: "check this", linqe_id: 2, commenter_id: 1)
Comment.create(content: "come onnnn", linqe_id: 1, commenter_id: 2)
Comment.create(content: "for real?", linqe_id: 2, commenter_id: 2)