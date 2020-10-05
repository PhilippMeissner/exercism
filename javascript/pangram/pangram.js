const ALPHABET_COUNT = 26;

export const isPangram = (str) => {
  const sentence = str.toLowerCase().replace(/[^a-z]/g, '');
  const charCount = sentence.length;

  if (charCount < ALPHABET_COUNT) return false;

  const usedLetters = {};
  for (let i = 0; i < sentence.length; i++) {
    const letter = sentence[i];

    usedLetters[letter] = true;
  }

  return Object.keys(usedLetters).length === ALPHABET_COUNT;
};
