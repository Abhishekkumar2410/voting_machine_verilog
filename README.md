# voting_machine_verilog

In this project i use normal thing that a voter can give a vote to any candidate who stand in election. what are the points that we have to take things in our mind are during making voting machine are:

1) whether we are calculating the vote or casting the vote.
2) how much duration for our button should be pressed for casting the vote.
3) And for each votes we have to show the voters that their vote has been casted.
4) for casting the vote we have to show though led.

these are the some points we have to clear in mind to make a voting machine. and one thing that you have to provide during making of voting machine what is the mode.
Now let me explain which files works what:
1) button_control.v

    in this file we have a button whether the button pressed is having some time or not because some times the button are debouncing so hold the button should neccesory and if the button is pressed for the some provided duration then the votes has been casted otherwise no vote has been caseted.

2)mode_checck.v

   in this we have the choice that what should we want to do whether to cast the vote or to display the vote and according to the mode we can show the votes or to show that the votes has been casted by emmiting the led.

3)vote_count.v
  in this we count the number of votes that the candidate gets thorough the voters.

4) 
  in this module we instantiate each modules such that we can operate the voting machine.

   # we done this using verilog in vivado . and simulate in also in vivado and add signal of received candidtaes votes on simulation.
