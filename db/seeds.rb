hello = User.new(username: "i_am_smart_philosopher", password: "123456", password_confirmation: "123456", first_name: "Michael", last_name: "Scofield")
hi = User.new(username: "greek_boi_ancient", password: "123456", password_confirmation: "123456", first_name: "Mister T", last_name:"Knowles")
sup = User.new(username: "max_weber", password: "123456", password_confirmation: "123456", first_name: "Max", last_name:"Weber")
q = User.new(username: "atheist_girl_22", password: "123456", password_confirmation: "123456", first_name: "Questions", last_name:"Questions")
w = User.new(username: "is_this_real_life", password: "123456", password_confirmation: "123456", first_name: "Juliana", last_name:"Bun")
e = User.new(username: "Gentian", password: "123456", password_confirmation: "123456", first_name: "Genty", last_name:"Negoshy")
r = User.new(username: "quantum_is_my_jam", password: "123456", password_confirmation: "123456", first_name: "Math", last_name:"Science")
t = User.new(username: "my_uncle_lacan", password: "123456", password_confirmation: "123456", first_name: "Karl", last_name:"Jung")
y = User.new(username: "breaking_boundaries", password: "123456", password_confirmation: "123456", first_name: "Shahti", last_name:"Shahbazoldi")
u = User.new(username: "utrecht_forever", password: "123456", password_confirmation: "123456", first_name: "Sandra", last_name:"Mali")
i = User.new(username: "10010101011", password: "123456", password_confirmation: "123456", first_name: "binary", last_name:"binary")
o = User.new(username: "adorno",password: "123456", password_confirmation: "123456", first_name: "Theodor", last_name:"Adorno")
p = User.new(username: "rango1",password: "123456", password_confirmation: "123456", first_name: "Rango", last_name:"The Chameleon")

hello.save
hi.save
sup.save
q.save
w.save
e.save
r.save
t.save
y.save
u.save
i.save
o.save
p.save

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

Linqe.create(
  title: "Ending the Barbarity",
  url: "https://www.jacobinmag.com/2016/08/private-prisons-department-justice-directive-obama/",
  slug: "ending-the-barbarity",
  submitter_id: 3,
  description: "Activists scored a win last week against for-profit prisons. Can they use it to launch a broader attack on the carceral state?")

Linqe.create(
  title: "Devoodooifying Psychology",
  url: "http://slatestarcodex.com/2016/08/25/devoodooifying-psychology/",
  slug: 'devoodooifying-psychology',
  submitter_id: 4,
  description: "[Epistemic status: very low. Total conjecture based on insufficient evidence.]")

Linqe.create(
  title: "Stop the Robot Apocalypse",
  url: "http://www.lrb.co.uk/v37/n18/amia-srinivasan/stop-the-robot-apocalypse",
  slug: "stop-the-robot-apocalypse",
  submitter_id: 5,
  description: "Philosophy at its best, Wittgenstein thought, resists the scientific impulse to treat the world as a theoretical construct. It is not a view shared in the main by contemporary philosophers. What is philosophy supposed to do if not theorise?")

Linqe.create(
  title: "The Rise of American Authoritarianism",
  url: "http://www.vox.com/2016/3/1/11127424/trump-authoritarianism",
  slug: "the-rise-of-american-authoritarianism",
  submitter_id: 6,
  description: "A niche group of political scientists may have uncovered what's driving Donald Trump's ascent. What they found has implications that go well beyond 2016.")

Linqe.create(
  title: "The Myth of the Ethical Shopper",
  url: "http://highline.huffingtonpost.com/articles/en/the-myth-of-the-ethical-shopper/",
  slug: "the-myth-of-the-ethical-shopper",
  submitter_id: 7,
  description: "We are still trying to eliminate sweatshops and child labor by buying right. But that's not how the world works in 2015.")

Linqe.create(
  title: "Automated Fact-Checking Would Improve Democracy.. And It's On Its Way",
  url: "https://www.fastcoexist.com/3062985/automated-fact-checking-would-improve-democracy-and-its-on-its-way",
  slug: "automated-fact-checking-would-improve-democracy-and-its-on-its-way",
  submitter_id: 8,
  description: "A number of companies are creating programs that can help call out politicians' lies, contortions, and self-contradictions in real time.")

Linqe.create(
  title: "A Naked Singularity",
  url: "http://quarterlyconversation.com/a-naked-singularity-by-sergio-de-la-pava",
  slug: "a-naked-singularity",
  submitter_id: 9,
  description: "This book review tends closer to an endorsement than we would usually publish. The reason for this is that the book under review is atypical.")

Linqe.create(
  title: "Whatever Happened to High Culture",
  url: "http://www.weeklystandard.com/whatever-happened-high-culture/article/1055581?nopager=1",
  slug: "whatever-happened-high-culture",
  submitter_id: 10,
  description: "I see no reason why the decay of culture should not proceed much further, and why we may not even anticipate a period, of some duration, of which it will be possible to say that it will have no culture. -- T. S. Eliot")

Linqe.create(
  title: "Can we prepare for the ethical issues surrounding future discoveries?",
  url: "https://aeon.co/videos/can-we-prepare-for-the-ethical-issues-surrounding-future-discoveries",
  slug: "can-we-prepare-for-the-ethical-issues-surrounding-future-discoveries",
  submitter_id: 11,
  description: "Whether you’re excited by its possibilities or worried about its potential consequences, large-scale human genome editing appears to be just around the corner thanks to CRISPR – a new gene editing tool unmatched in its revolutionary capabilities and efficiency. So how can we possibly prepare for its ethical implications?")

Linqe.create(
  title: "In Defense of Trash",
  url: "http://lithub.com/in-defense-of-trash/",
  slug: "in-defense-of-trash",
  submitter_id: 12,
  description: "Why pleasures should never be guilty, from valley of the dolls to bonkbusters.")

Linqe.create(
  title: "Searle on consciousness",
  url: "https://www.ted.com/talks/john_searle_our_shared_condition_consciousness?language=en",
  slug: "searle-on-consciousness",
  submitter_id: 13,
  description: "Philosopher John Searle lays out the case for studying human consciousness — and systematically shoots down some of the common objections to taking it seriously. As we learn more about the brain processes that cause awareness, accepting that consciousness is a biological phenomenon is an important first step. And no, he says, consciousness is not a massive computer simulation.")




Comment.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam mattis fermentum nunc, at rhoncus arcu elementum eget. Phasellus porta nisl posuere, ultrices mauris quis, tincidunt nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.", linqe_id: 1, commenter_id: 2)
Comment.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam mattis fermentum nunc, at rhoncus arcu elementum eget. Phasellus porta nisl posuere, ultrices mauris quis, tincidunt nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.", linqe_id: 12, commenter_id: 1)
Comment.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam mattis fermentum nunc, at rhoncus arcu elementum eget. Phasellus porta nisl posuere, ultrices mauris quis, tincidunt nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.", linqe_id: 7, commenter_id: 8)
Comment.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam mattis fermentum nunc, at rhoncus arcu elementum eget. Phasellus porta nisl posuere, ultrices mauris quis, tincidunt nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.", linqe_id: 5, commenter_id: 1)
Comment.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam mattis fermentum nunc, at rhoncus arcu elementum eget. Phasellus porta nisl posuere, ultrices mauris quis, tincidunt nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.", linqe_id: 5, commenter_id: 2)
Comment.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam mattis fermentum nunc, at rhoncus arcu elementum eget. Phasellus porta nisl posuere, ultrices mauris quis, tincidunt nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.", linqe_id: 8, commenter_id: 9)
Comment.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam mattis fermentum nunc, at rhoncus arcu elementum eget. Phasellus porta nisl posuere, ultrices mauris quis, tincidunt nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.", linqe_id: 6, commenter_id: 1)
Comment.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam mattis fermentum nunc, at rhoncus arcu elementum eget. Phasellus porta nisl posuere, ultrices mauris quis, tincidunt nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.", linqe_id: 6, commenter_id: 1)
Comment.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam mattis fermentum nunc, at rhoncus arcu elementum eget. Phasellus porta nisl posuere, ultrices mauris quis, tincidunt nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.", linqe_id: 8, commenter_id: 2)
Comment.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam mattis fermentum nunc, at rhoncus arcu elementum eget. Phasellus porta nisl posuere, ultrices mauris quis, tincidunt nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.", linqe_id: 7, commenter_id: 4)
Comment.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam mattis fermentum nunc, at rhoncus arcu elementum eget. Phasellus porta nisl posuere, ultrices mauris quis, tincidunt nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.", linqe_id: 8, commenter_id: 1)
Comment.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam mattis fermentum nunc, at rhoncus arcu elementum eget. Phasellus porta nisl posuere, ultrices mauris quis, tincidunt nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.", linqe_id: 8, commenter_id: 7)
Comment.create(content: "cool story bro", linqe_id: 1, commenter_id: 2)
Comment.create(content: "interesting", linqe_id: 2, commenter_id: 1)
Comment.create(content: "tru", linqe_id: 3, commenter_id: 4)
Comment.create(content: "check this", linqe_id: 4, commenter_id: 5)
Comment.create(content: "come onnnn", linqe_id: 5, commenter_id: 1)
Comment.create(content: "for real?", linqe_id: 6, commenter_id: 12)
Comment.create(content: "cool story bro", linqe_id: 7, commenter_id: 9)
Comment.create(content: "interesting", linqe_id: 8, commenter_id: 8)
Comment.create(content: "tru", linqe_id: 9, commenter_id: 5)
Comment.create(content: "check this", linqe_id: 10, commenter_id: 6)
Comment.create(content: "come onnnn", linqe_id: 11, commenter_id: 8)
Comment.create(content: "for real?", linqe_id: 12, commenter_id: 3)
Comment.create(content: "cool story bro", linqe_id: 2, commenter_id: 9)
Comment.create(content: "interesting", linqe_id: 5, commenter_id: 11)
Comment.create(content: "tru", linqe_id: 8, commenter_id: 10)
Comment.create(content: "check this", linqe_id: 11, commenter_id: 12)
Comment.create(content: "come onnnn", linqe_id: 3, commenter_id: 2)
Comment.create(content: "for real?", linqe_id: 6, commenter_id: 5)
Comment.create(content: "cool story bro", linqe_id: 9, commenter_id: 4)
Comment.create(content: "interesting", linqe_id: 10, commenter_id: 8)
Comment.create(content: "tru", linqe_id: 4, commenter_id: 7)
Comment.create(content: "check this", linqe_id: 2, commenter_id: 9)
Comment.create(content: "come onnnn", linqe_id: 9, commenter_id: 2)
Comment.create(content: "for real?", linqe_id: 7, commenter_id: 3)
Comment.create(content: "cool story bro", linqe_id: 7, commenter_id: 6)
Comment.create(content: "interesting", linqe_id: 12, commenter_id: 11)
Comment.create(content: "tru", linqe_id: 5, commenter_id: 12)
Comment.create(content: "check this", linqe_id: 4, commenter_id: 10)
Comment.create(content: "come onnnn", linqe_id: 11, commenter_id: 10)
Comment.create(content: "for real?", linqe_id: 12, commenter_id: 3)
Comment.create(content: "cool story bro", linqe_id: 9, commenter_id: 7)
Comment.create(content: "interesting", linqe_id: 10, commenter_id: 6)
Comment.create(content: "tru", linqe_id: 10, commenter_id: 4)
Comment.create(content: "check this", linqe_id: 3, commenter_id: 3)
Comment.create(content: "come onnnn", linqe_id: 6, commenter_id: 9)
Comment.create(content: "for real?", linqe_id: 2, commenter_id: 8)