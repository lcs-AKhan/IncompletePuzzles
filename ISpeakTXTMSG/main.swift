//
//  main.swift
//  I Speak TXTMSG
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/i-speak-txtmsg.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.
import Foundation

print("I Speak TXTMSG")
print("==============")

print("==============")
print("""
Short Form Translation
CU see you
:-) I’m happy
:-( I’m unhappy
;-) wink
:-P stick out my tongue
(˜.˜) sleepy
TA totally awesome
CCC Canadian Computing Competition
CUZ because
TY thank-you
YW you’re welcome
TTYL talk to you later
""")

print("==============")

// INPUT
// Ask for a phrase

while 1 != 2 {
  
  print("Enter phrase> ", terminator: "")
  let phrase = readLine()!

  switch phrase {
    case "CU":
      print("See you")
    case ":-)":
      print("I'm happy")
    case ":-(":
      print("I'm unhappy")
    case ";-)":
      print("*Wink*")
    case ":-P":
      print("stick out my tongue")
    case "(˜.˜)":
      print("sleepy")
    case "TA":
      print("Totally awesome")
    case "CCC":
      print("Canadian Computing Competition")
    case "CUZ":
      print("because")
    case "TY":
      print("Thank-you")
    case "YW":
      print("you're welcome")
    case "TTYL":
      print("talk to you later")
      exit(0)
    default:
      print(phrase)
  }

}


