class LoadData < ActiveRecord::Migration[6.1]
  def change
    ob = User.new(first_name: 'Obiwan', last_name: 'Kenobi')
    ob.save(validate: false)
    gg = User.new(first_name: 'General', last_name: 'Grievous')
    gg.save(validate: false)
    kk = User.new(first_name: 'King', last_name: 'Kong')
    kk.save(validate: false)

    photo1 = Photo.new(date_time: '2021-02-02 12:00:00', file_name: 'Hello There.jpg')
    photo1.user = ob
    photo1.save(validate: false)

    photo2 = Photo.new(date_time: '2021-02-02 12:30:00', file_name: 'So Uncivilized.jpg')
    photo2.user = ob
    photo2.save(validate: false)

    photo3 = Photo.new(date_time: '2021-02-02 12:05:00', file_name: 'General Kenobi.jpg')
    photo3.user = gg
    photo3.save(validate: false)

    photo4 = Photo.new(date_time: '2021-02-05 09:00:00', file_name: 'Monke.jpg')
    photo4.user = kk
    photo4.save(validate: false)

    comment = Comment.new(date_time: '2012-02-02 12:05:00', text: 'General Kenobi')
    comment.user = gg
    comment.photo = photo1
    comment.save(validate: false)

    comment = Comment.new(date_time: '2012-02-02 12:35:05', text: 'F')
    comment.user = ob
    comment.photo = photo2
    comment.save(validate: false)

    comment = Comment.new(date_time: '2012-02-02 12:35:15', text: 'F')
    comment.user = gg
    comment.photo = photo2
    comment.save(validate: false)

    comment = Comment.new(date_time: '2012-02-02 12:35:20', text: 'F')
    comment.user = kk
    comment.photo = photo2
    comment.save(validate: false)

    comment = Comment.new(date_time: '2012-02-02 12:10:20', text: '4 Lightsabers')
    comment.user = gg
    comment.photo = photo3
    comment.save(validate: false)

    comment = Comment.new(date_time: '2012-02-02 12:11:20', text: '1 Lightsaber')
    comment.user = ob
    comment.photo = photo3
    comment.save(validate: false)

    comment = Comment.new(date_time: '2012-05-02 12:00:00', text: 'Return to Monke')
    comment.user = kk
    comment.photo = photo4
    comment.save(validate: false)

    comment = Comment.new(date_time: '2012-02-05 12:10:00', text: 'Harambe')
    comment.user = ob
    comment.photo = photo4
    comment.save(validate: false)

    comment = Comment.new(date_time: '2012-02-05 12:15:00', text: 'This will make a fine addition to my collection')
    comment.user = gg
    comment.photo = photo4
    comment.save(validate: false)
  end

  def order66
    Comment.delete_all
    Photo.delete_all
    User.delete_all
  end
end
