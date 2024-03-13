BEGIN {RS = “\n” } /<div class="price" \
 {
  if ($0 ~ /<li><a href=\”/)
  {
   gsub(/(<ul>|<\/ul>)/,””,$0)
   gsub(/<li><a href=\”(\s|\S)*\”>/,””,$0)
   gsub(/<\/a><\/li>/,””,$0)
   print $0
  }
 }
