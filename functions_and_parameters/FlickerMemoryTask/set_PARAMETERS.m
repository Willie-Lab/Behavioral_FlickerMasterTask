

function PARAMETERS=set_PARAMETERS(day)
    %parameters that apply to both study and test phases:
    PARAMETERS.fix_cross_duration.averageTime=1;
    PARAMETERS.fix_cross_duration.randomVariation=0.5;
    PARAMETERS.font_size=40;
    PARAMETERS.end_instruct = 'Task finished! Please press any key to exit.';
    
    
    if day==1 %parameters for study phase
        PARAMETERS.image_duration=3;
        PARAMETERS.stim_duration=3;
        PARAMETERS.ISI=5;
        PARAMETERS.num_practice_images=4;
        PARAMETERS.num_study_images=168;
        PARAMETERS.sample_rate=44100;
        PARAMETERS.in_sound=repmat(sin(2*pi*800*(1:PARAMETERS.sample_rate*0.25)/PARAMETERS.sample_rate),2,1);
        PARAMETERS.out_sound=repmat(sin(2*pi*1200*(1:PARAMETERS.sample_rate*0.25)/PARAMETERS.sample_rate),2,1);
        PARAMETERS.initial_instruct='You will be presented with a set of pictures.\n\nFor each picture, please indicate how memorable you think it is:\n\n press the left arrow if you think that you are LESS LIKELY to remember it,\n\nor press the right arrow if you think that you are MORE LIKELY to remember it.\n\n\n\nPress any key to continue.';
        PARAMETERS.practice_instruct='We will first do a few practice trials.\n\n\n\nPress any key to continue.';
        PARAMETERS.study_instruct='That''s the end of the practice.\n\nNow for the real thing ...\n\n\n\nPress any key to continue.';
        PARAMETERS.block_instruct = 'You have reached the end of a block.\n\nPress any key when\n\nyou are ready to continue the experiment.';
        
    elseif day==2 %parameters for test phase
        PARAMETERS.image_duration=1;
        PARAMETERS.initial_instruct='You will be presented with a set of pictures you saw before, mixed with new pictures.\n\nFor each picture, please indicate whether:\n\n\n you are SURE this is an OLD picture (C)\n\nor\n\n you think that MAYBE this is an OLD picture (V)\n\nor\n\n you think that MAYBE this is a NEW picture (B)\n\nor\n\n you are SURE this is a NEW picture (N).\n\n\n\nPress any key to continue.';
        PARAMETERS.test_trial_instruction='OLD, SURE          OLD, MAYBE          NEW, MAYBE          NEW, SURE\n\nC                         V                             B                          N';
    end
    
end