const GIGASECOND = 10**9;
const SECOND = 1000;

export const gigasecond = (date) => new Date(date.getTime() + GIGASECOND * SECOND);
