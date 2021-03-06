% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/syuzhet.R
\name{get_sentiment}
\alias{get_sentiment}
\title{Get Sentiment Values for a String}
\usage{
get_sentiment(char_v, method = "syuzhet", path_to_tagger = NULL,
  cl = NULL, language = "english", lexicon = NULL)
}
\arguments{
\item{char_v}{A vector of strings for evaluation.}

\item{method}{A string indicating which sentiment method to use. Options include "syuzhet", "bing", "afinn", "nrc" and "stanford."  See references for more detail on methods.}

\item{path_to_tagger}{local path to location of Stanford CoreNLP package}

\item{cl}{Optional, for parallel sentiment analysis.}

\item{language}{A string. Only works for "nrc" method}

\item{lexicon}{a data frame with at least two columns labeled "word" and "value."}
}
\value{
Return value is a numeric vector of sentiment values, one value for each input sentence.
}
\description{
Iterates over a vector of strings and returns sentiment values based on user supplied method. The default method, "syuzhet" is a custom sentiment dictionary developed in the Nebraska Literary Lab.  The default dictionary should be better tuned to fiction as the terms were extracted from a collection of 165,000 human coded sentences taken from a small corpus of contemporary novels.   
At the time of this release, Syuzhet will only work with languages that use Latin character sets.  This effectively means that "Arabic", "Bengali", "Chinese_simplified", "Chinese_traditional", "Greek", "Gujarati", "Hebrew", "Hindi", "Japanese", "Marathi", "Persian", "Russian", "Tamil", "Telugu", "Thai", "Ukranian", "Urdu", "Yiddish" are not supported even though these languages are part of the extended NRC dictionary.
}
\references{
Bing Liu, Minqing Hu and Junsheng Cheng. "Opinion Observer: Analyzing and Comparing Opinions on the Web." Proceedings of the 14th International World Wide Web conference (WWW-2005), May 10-14, 2005, Chiba, Japan.

Minqing Hu and Bing Liu. "Mining and Summarizing Customer Reviews." Proceedings of the ACM SIGKDD International Conference on Knowledge Discovery and Data Mining (KDD-2004), Aug 22-25, 2004, Seattle, Washington, USA.  See: http://www.cs.uic.edu/~liub/FBS/sentiment-analysis.html#lexicon

Saif Mohammad and Peter Turney.  "Emotions Evoked by Common Words and Phrases: Using Mechanical Turk to Create an Emotion Lexicon." In Proceedings of the NAACL-HLT 2010 Workshop on Computational Approaches to Analysis and Generation of Emotion in Text, June 2010, LA, California.  See: http://saifmohammad.com/WebPages/lexicons.html

Finn Arup Nielsen. "A new ANEW: Evaluation of a word list for sentiment analysis in microblogs", Proceedings of the ESWC2011 Workshop on 'Making Sense of Microposts':Big things come in small packages 718 in CEUR Workshop Proceedings : 93-98. 2011 May. http://arxiv.org/abs/1103.2903. See: http://www2.imm.dtu.dk/pubdb/views/publication_details.php?id=6010

Manning, Christopher D., Surdeanu, Mihai, Bauer, John, Finkel, Jenny, Bethard, Steven J., and McClosky, David. 2014. The Stanford CoreNLP Natural Language Processing Toolkit. In Proceedings of 52nd Annual Meeting of the Association for Computational Linguistics: System Demonstrations, pp. 55-60.  See: http://nlp.stanford.edu/software/corenlp.shtml

Richard Socher, Alex Perelygin, Jean Wu, Jason Chuang, Christopher Manning, Andrew Ng and Christopher Potts.  "Recursive Deep Models for Semantic Compositionality Over a Sentiment Treebank Conference on Empirical Methods in Natural Language Processing" (EMNLP 2013).  See: http://nlp.stanford.edu/sentiment/
}
