#' fics
#'
#' A function for creating items assessing the belief in a conspiracy about a given topic. The items are created using the Flexible Inventory of Conspiracy Suspicions (FICS) template (Wood, 2017).
#' @param topic a string indicating the topic the conspiracy belief should be about.
#' @export
#' @references
#' Wood, M. J. (2017). Conspiracy suspicions as a proxy for beliefs in conspiracy theories: Implications for theory and measurement. British Journal of Psychology, 108(3), 507–527. https://doi.org/10.1111/bjop.12231
#' @examples
#' fics("Canada")
#' [1] "1. The real truth about Canada is being kept from the public."
#' [2] "2. There is something very suspicious about the things the public has been told about Canada."                                   
#' [3] "3. People need to wake up and start asking questions about Canada."              
#' [4] "4. Those in power are going to a great deal of trouble to keep Canada from being thoroughly investigated."                       
#' [5] "5. If most people knew the real truth about Canada, there would be riots in the streets."                                        
#' [6] "6. It’s very suspicious that so few people in the media question whether we’re being told the truth about Canada."               
#' [7] "7. When it comes to Canada, most people are asleep and need to wake up."                                                         
#' [8] "8. Those in power are very nervous that the public will realize the truth about Canada."                                         
#' [9] "9. We may never know the full truth about Canada, but it's clear that the mainstream story is a complete lie."                   
#' [10] "10. The facts about Canada simply don’t match what we’ve been told by 'experts' and the mainstream media."                       
#' [11] "11. We need a new, unbiased investigation to uncover the real truth about Canada."                                               
#' [12] "12. Anyone who's been paying attention knows that we're being lied to about Canada, but most people are simply brainwashed."     
#' [13] "13. Reporters, scientists, and government officials are involved in a conspiracy to cover up important information about Canada."
#' [14] "14. We may never know the full truth about Canada, but it's clear that the mainstream story is a complete lie."                  
#' [15] "15. If the truth about Canada came out, it would hurt the interests of some extremely powerful people."                          
#' [16] "16. The mainstream media could never have an honest discussion about Canada - there are too many powerful interests at work."    
#' [17] "17. An impartial, independent investigation of Canada would show once and for all that we've been lied to on a massive scale." 

fics <- function(topic) {
  
  # check input
  if (missing(topic)) {
    stop("a topic for the conspiracy theories should be provided.")
  }
  
  if (!is.character(topic)) {
    stop("topic should be of type character.")
  }
  
  if (length(topic) != 1) {
    stop("topic should be of length 1.")
  }
  
  # load items
  items <- c("1. The real truth about _topic_ is being kept from the public.",
             "2. There is something very suspicious about the things the public has been told about _topic_.",
             "3. People need to wake up and start asking questions about _topic_.",
             "4. Those in power are going to a great deal of trouble to keep _topic_ from being thoroughly investigated.",
             "5. If most people knew the real truth about _topic_, there would be riots in the streets.",
             "6. It’s very suspicious that so few people in the media question whether we’re being told the truth about _topic_.",
             "7. When it comes to _topic_, most people are asleep and need to wake up.",
             "8. Those in power are very nervous that the public will realize the truth about _topic_.",
             "9. We may never know the full truth about _topic_, but it's clear that the mainstream story is a complete lie.",
             "10. The facts about _topic_ simply don’t match what we’ve been told by 'experts' and the mainstream media.",
             "11. We need a new, unbiased investigation to uncover the real truth about _topic_.",
             "12. Anyone who's been paying attention knows that we're being lied to about _topic_, but most people are simply brainwashed.",
             "13. Reporters, scientists, and government officials are involved in a conspiracy to cover up important information about _topic_.",
             "14. We may never know the full truth about _topic_, but it's clear that the mainstream story is a complete lie.",
             "15. If the truth about _topic_ came out, it would hurt the interests of some extremely powerful people.",
             "16. The mainstream media could never have an honest discussion about _topic_ - there are too many powerful interests at work.",
             "17. An impartial, independent investigation of _topic_ would show once and for all that we've been lied to on a massive scale.")
  
  # create items
  out <- unlist(lapply(items, FUN = function(item) gsub("_topic_", topic, item)))
  
  return(out)
}
