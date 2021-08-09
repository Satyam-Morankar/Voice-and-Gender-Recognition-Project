NET.addAssembly('System.speech')
mySpeaker = System.Speech.Synthesis.SpeechSynthesizer;
mySpeaker.Rate = 0.5;
mySpeaker.Volume = 100;
Speak(mySpeaker,'Welcome to Speech and Gender Recognition Project created by Satyam Morankar and Nishant Jain')
disp('Audio Files Present in the Database: ');
disp('Audio 1: one.mpeg')
disp('Audio 2: Two.mpeg')
disp('Audio 3: three.mpeg')
disp('Audio 4: four_1.mpeg')
disp('Audio 5: five.mpeg')
disp('Audio 6: test6_f.mpeg')
Speak(mySpeaker,'Please Enter the file-name of the audio file to be tested');
x = input('Please Enter the file-name of the audio file to be tested:');
Speak(mySpeaker,x);
Speak(mySpeaker,'This is file name given as input to the program. Please wait while we fetch the results for you');
speechrecognition(x)