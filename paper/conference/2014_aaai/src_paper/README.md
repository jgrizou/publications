# Calibration-Free BCI Based Control

Jonathan Grizou,  Iñaki Iturrate, Luis Montesano, Pierre-Yves Oudeyer and Manuel Lopes

AAAI-14: Twenty-Eighth Conference on Artificial Intelligence, 2014.

**Abstract:** Recent works have explored the use of brain signals to directly control virtual and robotic agents in sequential tasks. So far in such brain-computer interfaces (BCI), an explicit calibration phase was required to build a decoder that translates raw electroencephalography (EEG) signals from the brain of each user into meaningful instructions. This paper proposes a method that removes the calibration phase, and allows a user to control an agent to solve a sequential task. The proposed method assumes a distribution of possible tasks, and infers the interpretation of EEG signals and the task by selecting the hypothesis which best explains the history of interaction. We introduce a measure of uncertainty on the task and on the EEG signal interpretation to act as an exploratory bonus for a planning strategy. This speeds up learning by guiding the system to regions that better disambiguate among task hypotheses. We report experiments where four users use BCI to control an agent on a virtual world to reach a target without any previous calibration process.

Final version release: https://github.com/jgrizou/paper_conference_aaai_2014/releases/tag/final

```
@conference{grizou2014calibration,
 author = {Grizou, Jonathan and Iturrate, Inaki and Montesano, Luis and Oudeyer, Pierre-Yves and Lopes, Manuel},
 booktitle = {International AAAI Conference on Artificial Intelligence},
 title = {{C}alibration-{F}ree {B}{C}I {B}ased {C}ontrol},
 year = {2014}
}

```

### License

[![Creative Commons BY-NC-ND](https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png) ](http://creativecommons.org/licenses/by-nc-nd/4.0/)
