class Afromusic::Music
    attr_accessor :name , :link 

    def self.allMusic
  music =[]
  music<<self.newMusic
  music<<self.oldMuic
    end

def self.newMusic
    doc = Nokogiri::HTML(open("https://achivmizik.net/"))
    music = self.new
    music = doc.css(".cat-box.scroll-box.tie-cat-3").map do |music|
        # puts music
            music.css(".scroll-item").each do |post|  
        puts "Music : #{post.css(".post-box-title a").text}"
        #puts "Image: #{post.css(".post-thumbnail a").attribute("href").value}"
        puts "Link: #{post.css(".post-box-title a").attribute("href").value}"
        puts"__________________________________________________________________"
            end       
      end
end
    
def self.oldMuic
    doc = Nokogiri::HTML(open("https://achivmizik.net/category/retro/"))
  doc.css(".item-list").each do |old|
    puts "Music : #{old.css(".post-box-title").text}"
    puts "Link: #{old.css(".post-box-title a").attribute("href").value}"
    puts "________________________________________________________________"
  end

end

end