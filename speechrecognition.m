function speechrecognition(filename)
%Speech Recognition Using Correlation Method

voice=audioread(filename);
x=voice;
x=x';
x=x(1,:);
x=x';

y1=audioread('one.mpeg');
y1=y1';
y1=y1(1,:);
y1=y1';
z1=xcorr(x,y1);
m1=max(z1);
display(m1);
l1=length(z1);
t1=-((l1-1)/2):1:((l1-1)/2);
t1=t1';
%subplot(3,2,1);
figure
plot(t1,z1)
title('Correlation graph with audio 1')
xlabel('Time (sec)')
ylabel('Correlation')

y2=audioread('Two.mpeg');
y2=y2';
y2=y2(1,:);
y2=y2';
z2=xcorr(x,y2);
m2=max(z2);
display(m2);
l2=length(z2);
t2=-((l2-1)/2):1:((l2-1)/2);
t2=t2';
%subplot(3,2,2);
figure
plot(t2,z2);
title('Correlation graph with audio 2')
xlabel('Time (sec)')
ylabel('Correlation')

y3=audioread('three.mpeg');
y3=y3';
y3=y3(1,:);
y3=y3';
z3=xcorr(x,y3);
m3=max(z3);
display(m3);
l3=length(z3);
t3=-((l3-1)/2):1:((l3-1)/2);
t3=t3';
%subplot(3,2,3);
figure
plot(t3,z3);
title('Correlation graph with audio 3')
xlabel('Time (sec)')
ylabel('Correlation')

y4=audioread('four_1.mpeg');
y4=y4';
y4=y4(1,:);
y4=y4';
z4=xcorr(x,y4);
m4=max(z4);
display(m4);
l4=length(z4);
t4=-((l4-1)/2):1:((l4-1)/2);
t4=t4';
%subplot(3,2,4);
figure
plot(t4,z4);
title('Correlation graph with audio 4')
xlabel('Time (sec)')
ylabel('Correlation')

y5=audioread('five.mpeg');
y5=y5';
y5=y5(1,:);
y5=y5';
z5=xcorr(x,y5);
m5=max(z5);
display(m5);
l5=length(z5);
t5=-((l5-1)/2):1:((l5-1)/2);
t5=t5';
%subplot(3,2,5);
figure
plot(t5,z5);
title('Correlation graph with audio 5')
xlabel('Time (sec)')
ylabel('Correlation')

y6=audioread('test6_f.mpeg');
y6=y6';
y6=y6(1,:);
y6=y6';
z6=xcorr(x,y6);
m6=max(z6);
display(m6);
l6=length(z6);
t6=-((l6-1)/2):1:((l6-1)/2);
t6=t6';
%subplot(3,2,6);
figure
plot(t6,z6);
title('Correlation graph with audio 6')
xlabel('Time (sec)')
ylabel('Correlation')
m7 = 230;
a=[m1 m2 m3 m4 m5 m6 m7];
m=max(a);
display(m);
h=audioread('Success.mpeg');

if m<=m1
     msgbox('Voice Recognized: Audio 1')
     disp('Voice Recognized: Audio 1');
        soundsc(h,5000)
        pause(5)
        soundsc(audioread('one.mpeg'),50000)
        [audio,FS]= audioread('one.mpeg');
        [f0,~] = pitch(audio,FS);
plot(audio);
b=mean(f0);
disp('Frequency of Voice:');
display(b(:,1));
disp('Gender Recognized Successfully:')
if b>165
msgbox('Gender Recognized Successfully: Female Voice')
fprintf("Female Voice");
else
msgbox('Gender Recognized Successfully: Male Voice')
fprintf('Male Voice');
end

elseif m<=m2
     msgbox('Voice Recognized: Audio 2')
      disp('Voice Recognized: Audio 2');
       soundsc(h,50000)
       pause(5)
    soundsc(audioread('Two.mpeg'),50000)
        [audio,FS]= audioread('Two.mpeg');
        [f0,~] = pitch(audio,FS);
plot(audio);
b=mean(f0);
disp('Frequency of Voice:');
display(b(:,1));
disp('Gender Recognized Successfully:')
if b>165
msgbox('Gender Recognized Successfully: Female Voice')
fprintf("Female Voice");
else
msgbox('Gender Recognized Successfully: Male Voice')
fprintf('Male Voice');
end

elseif m<=m3
    msgbox('Voice Recognized: Audio 3')
     disp('Voice Recognized: Audio 3');
      soundsc(h,50000)
       pause(5)
    soundsc(audioread('three.mpeg'),50000)
        [audio,FS]= audioread('three.mpeg');
        [f0,~] = pitch(audio,FS);
plot(audio);
b=mean(f0);
disp('Frequency of Voice:');
display(b(:,1));
disp('Gender Recognized Successfully:')
if b>165
msgbox('Gender Recognized Successfully: Female Voice')
fprintf("Female Voice");
else
msgbox('Gender Recognized Successfully: Male Voice')
fprintf('Male Voice');
end
       
        
elseif m<=m4
     msgbox('Voice Recognized: Audio 4')
      disp('Voice Recognized: Audio 4');
       soundsc(h,50000)
        pause(5)
    soundsc(audioread('four_1.mpeg'),50000)
         [audio,FS]= audioread('four_1.mpeg');
        [f0,~] = pitch(audio,FS);
plot(audio);
b=mean(f0);
disp('Frequency of Voice:');
display(b(:,1));
disp('Gender Recognized Successfully:')
if b>165
msgbox('Gender Recognized Successfully: Female Voice')
fprintf("Female Voice");
else
msgbox('Gender Recognized Successfully: Male Voice')
fprintf('Male Voice');
end

elseif m<=m5
    msgbox('Voice Recognized: Audio 5')
     disp('Voice Recognized: Audio 5');
     soundsc(h,50000)
      pause(5)
    soundsc(audioread('five.mpeg'),50000)
        [audio,FS]= audioread('five.mpeg');
        [f0,~] = pitch(audio,FS);
plot(audio);
b=mean(f0);
disp('Frequency of Voice:');
display(b(:,1));
disp('Gender Recognized Successfully:')
if b>165
msgbox('Gender Recognized Successfully: Female Voice')
fprintf("Female Voice");
else
msgbox('Gender Recognized Successfully: Male Voice')
fprintf('Male Voice');
end

elseif m<=m6
    msgbox('Voice Recognized Successfully: Audio 6')
    disp('Voice Recognized: Audio 6');
     soundsc(h,50000)
      pause(5)
    soundsc(audioread('test6_f.mpeg'),50000)
        [audio,FS]= audioread('test6_f.mpeg');
        [f0,~] = pitch(audio,FS);
b=mean(f0);
disp('Frequency of Voice:');
display(b(:,1));
disp('Gender Recognized Successfully:')
if b>165
msgbox('Gender Recognized Successfully: Female Voice')
fprintf("Female Voice");
else
msgbox('Gender Recognized Successfully: Male Voice')
fprintf('Male Voice');
end

else
   soundsc(audioread('denied.wav'),50000)
   msgbox('Voice Not Found !!')
   disp('Voice Not Recognized !!')
   
end