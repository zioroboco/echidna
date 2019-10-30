const emoji = {
  penguin: "🐧",
  squid: "🦑"
}

// cool coment
const format = (message: string, status: keyof typeof emoji = "penguin") =>
  `${emoji[status]}  ${message}`

export const thing = format("Working!")
