const emoji = {
  penguin: "🐧",
  squid: "🦑",
  success: "✅",
  failure: "❌"
}

const format = (message: string, status: keyof typeof emoji = "success") =>
  `${emoji[status]}  ${message}`

export const thing = format("Working!")
