User.create!([
  {email: "mayureshmayurs@gmail.com", encrypted_password: "$2a$11$vY0/IFgWUnxg.60FgYUd6.8ZZLvUhsL6Sn3cpjwl7ExlFNxudDpvK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: "Mayuresh Srivastava", username: "mayureshmayur"},
  {email: "harshit.agarwal@engineer.ai", encrypted_password: "$2a$11$TJEK3wtOTK7twRcwX0PVXO95Ib7TSgBp3eV9k/7T5MXawvDYyVTIe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: "Harshit Agarwal", username: "h_a"},
  {email: "abc@def.com", encrypted_password: "$2a$11$y0.bRNqVso/L4jo0fYk2c.6F7CgP8..3MGlgfY597na9fD0hE0gH6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: "ABC DEF", username: "abc_def"},
  {email: "mayuresh.srivastava@engineer.ai", encrypted_password: "$2a$11$azUCdw2DPFLiJlAjwZ5vGOqcUQfybwYNId4DA4.TB2PF8Nr0AzTRe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: "Mayur Srivastav", username: "mayuresh_srivastava"},
  {email: "lokendra@engineer.ai", encrypted_password: "$2a$11$b0Ws2452PrpFg8gPiBKcHOdRXCmycxNjWopVDvyIY8/HVYC9GIgDO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: "Lokendra Kumar", username: "sonukumar"}
])
Relationship.create!([
  {follower_id: 1, followed_id: 2},
  {follower_id: 1, followed_id: 5},
  {follower_id: 4, followed_id: 1},
  {follower_id: 2, followed_id: 1},
  {follower_id: 6, followed_id: 5},
  {follower_id: 6, followed_id: 4}
])
Tweet.create!([
  {content: "Engineer.ai raises Series A of $29.5 Million from Lakestar, Jungle Ventures and Softbank’s DeepCore (link: https://yourstory.com/2018/11/engineer-ai-raises-funding-29-million/?bookmark=375781) yourstory.com/2018/11/engine…", user_id: 1},
  {content: "If we abandon the law of love, the law of the strongest over the weakest will be asserted.", user_id: 1},
  {content: "Aaj tak apni jagah dil mein nahin apne hui \r\nyar ke dil mein bhala puchho to ghar kyun-kar karen\r\n~Haidar Ali Aatish", user_id: 2},
  {content: "भगत सिंह, सुखदेव, राजगुरु, सिर्फ़ नाम नहीं हैं; हमारे रगों में दौड़ता क्रांति का एक जज़्बा हैं। \r\n\r\nउनका जीवन, आज भी, हमें मज़बूत बनाता है, आज़ाद बनाता है, इंसान बनाता है। \r\n\r\nशहीद दिवस पर हमारे वीरों को शत् शत् नमन।\r\n\r\nउनके विचारों और आदर्शो की लड़ाई हम जारी रखेंगे।", user_id: 4},
  {content: "By saying that a country should not be held responsible because of a few people, does Rahul also agree that Pakistan govt & the military have no connection with terrorism in India?\r\nRahul Gandhi must answer if it is not Pakistan then who is responsible for these acts of terrorism?", user_id: 2},
  {content: "Assam and Kerala are amongst the major tea producing states in India.", user_id: 4},
  {content: "Kisi ki Life ke sapne poore karo,\r\nKisi ki Life ka Paytm bano!\r\n\r\nIntroducing our latest Brand Film", user_id: 1},
  {content: "When you are positive, you are calm! ", user_id: 1},
  {content: "Lakshmana Sena, the ruler of the Sena Empire had Pancharatnas (meaning 5 gems who were Govardhana, Sarana, Jayadeva(author of Gita govinda), Umapati, Dhoyi) in his court.\r\n\r\n", user_id: 5},
  {content: "\"But the good developers use Macs!\"\r\n\r\n1. No, the privileged ones do.\r\n2. Keep telling yourself how special your club is while a kid in the developing world, rocking a shitty Dell, creates your next job.", user_id: 5},
  {content: "Good developers use Linux, which is free and runs that shitty dell better than windows.", user_id: 5},
  {content: "Not sure if using Node makes your life any better at least with my one use case. Some things I definitely like and have influenced my dev philosophies positively but largely not the best platform for 95% of web dev backend needs. Frontend is not my forte so take it fwiw. My 2¢", user_id: 5},
  {content: "I am Lokendra Kumar. ", user_id: 6},
  {content: "I am frontend developer.", user_id: 6},
  {content: "I am from Kanpur.", user_id: 6}
])
