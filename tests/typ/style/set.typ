// General tests for set.

---
// Test that text is affected by instantiation-site bold.
#let x = [World]
Hello *{x}*

---
// Test that lists are affected by correct indents.
#let fruit = [
  - Apple
  - Orange
  #list(body-indent: 20pt, [Pear])
]

- Fruit
[#set list(indent: 10pt)
 #fruit]
- No more fruit

---
// Test that that par spacing and text style are respected from
// the outside, but the more specific fill is respected.
#set par(spacing: 4pt)
#set text(style: "italic", fill: eastern)
#let x = [And the forest #parbreak() lay silent!]
#text(fill: forest, x)

---
// Error: 2-10 set, show and wrap are only allowed directly in markup
{set f(x)}