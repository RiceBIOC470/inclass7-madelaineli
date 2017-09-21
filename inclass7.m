%Inclass assignment 7. 
% 1. The gene Cdx2 is a crucial transcription factor involved in number of
% developmental stages. Use the UCSC genome browser to answer the following questions
% about it:

% A. What human chromosome is it located on?
%   It's located on chromosome 13.
% B. How many exons does it have?
%   It has 3 coding exons.
% C. What is the precise position of its stop codon in the genome?
%   27,969,004-27,969,006  from the coding region
% D. Identify at least one difference in sequence between human and mouse
% CDX2.
%   From the Alignment block 2 of 542 in window, 27962151 - 27962199:
%   Human: 5892bp in coding region
%   Mouse: 5141bp in coding region
% E. In which human tissues is it expressed most abundantly?
%   Expressed most in colon-transverse

%2. A. Use the unigene database to find the accession number for a genbank
% entry containing the complete coding sequence of Cdx2. 
%   Homo sapiens Cdx2: NM_001265
% B. Use MATLAB to read the genbank information corresponding to that
% accession number. 
genbank_info = getgenbank('NM_001265.4');

% C. Use the information read in to find the position of the start and stop
% codon within the sequence. What are the parts of the sequence before the start codon 
% and after the stop codon?
[ORFlength, start_position,end_position] = findORF(genbank_info.Sequence);
disp ('start codon of sequence')
disp (start_position)
disp ('stop codon of sequence')
disp (stop_position)
% Start codon is preceded by 5' UTR (untranslated region)
% After stop codon would be 3' UTR (untranslated region)

% D. Use the protein_id to read the information on the protein. Use the
% information you read to determine where the homeobox domain of the protein is.
% Hint: see the field "Features". 
protein_id=getgenpept('NP_001256');
protein_id.Features;
% homeobox domain of the protein is from 190 a.a. to 242 a.a.