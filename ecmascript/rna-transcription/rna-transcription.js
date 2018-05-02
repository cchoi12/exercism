class Transcriptor {
  constructor() {
    this.transcriptionTable = {
      C: 'G',
      G: 'C',
      A: 'U',
      T: 'A'
    }
  }

  toRna(dna) {
    const rnaArray = Array.from(dna)
    return rnaArray.reduce((dnaTranslation, nucleotide) => {
      if (this.transcriptionTable[nucleotide] === undefined) {
        throw new Error('Invalid input DNA.')
      }
      return dnaTranslation + this.transcriptionTable[nucleotide]
    }, '')
  }
}

export default Transcriptor;
