# Xtreme-Cosine
Extreme Cosine is a similarity method based on the research paper "Evaluation of analytical methods for connectivity map data". A brief description of XTreme Cosine similarity is as follows.

The Xtreme cosine similarity score is calculated by retaining only the Xtreme probes for each instance after sorting by decreasing fold-change, i.e., only keeping the top N and bottom N probe sets and setting all other probe sets to zero. The cosine similarity between two Xtreme instances can then be calculated as a dot product of the two vectors. This is a variation of a described method. Cosine similarity is much like Pearson correlation except that the vectors are not centered around their individual means. Unlike Euclidian distance, both cosine similarity and Pearson correlation are scale independent and should be more robust for our purpose.

Reference: Cheng, Jie, et al. "Evaluation of analytical methods for connectivity map data." Biocomputing 2013. 2013. 5-16.
