const DNA_TO_RNA_MAPPER = {
  'G': 'C',
  'C': 'G',
  'T': 'A',
  'A': 'U',
};

export const toRna = (dna) => dna.split('').map((dnaChar) => dnaChar.replace(dnaChar, DNA_TO_RNA_MAPPER[dnaChar])).join('');
