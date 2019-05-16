 var yummy = "D\u{1f369}ugh\u{20d7}n\u{20ed}uts"
extension String{
     func index(_ position:Int)->String.Index!{
        if position < 0 || position > self.count {return nil}
        return self.index(self.startIndex, offsetBy: position)
    }
    func midString(from index:Int, length:Int)->String!{
        if let startPosition = self.index(index){
            if let endPosition = self.index(index + length - 1){
                return String(self[startPosition...endPosition])
            }
        }
        return nil
    }
    
}

//Now to test all this with a string with extended grapheme cluster
yummy
yummy.midString(from: 3, length: 3)
yummy.prefix(35)
 yummy.suffix(35)
 yummy.suffix(5).prefix(1)
 
 
 
 
 
