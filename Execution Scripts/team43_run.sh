sudo singularity build planner_team43.img Singularity_team43

    mkdir team43
    mkdir team43/problem-1-1 
    mkdir team43/problem-1-1/tmp
    cp Problems/domain.pddl team43/problem-1-1 
    cp Problems/problem-1-1.pddl team43/problem-1-1 
    RUNDIR="$(pwd)/team43/problem-1-1"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-1-1.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_1-1.txt

    mkdir team43/problem-1-2 
    mkdir team43/problem-1-2/tmp
    cp Problems/domain.pddl team43/problem-1-2 
    cp Problems/problem-1-2.pddl team43/problem-1-2 
    RUNDIR="$(pwd)/team43/problem-1-2"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-1-2.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_1-2.txt
    
    mkdir team43/problem-1-3 
    mkdir team43/problem-1-3/tmp
    cp Problems/domain.pddl team43/problem-1-3 
    cp Problems/problem-1-3.pddl team43/problem-1-3 
    RUNDIR="$(pwd)/team43/problem-1-3"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-1-3.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_1-3.txt
    
    mkdir team43/problem-1-4 
    mkdir team43/problem-1-4/tmp
    cp Problems/domain.pddl team43/problem-1-4 
    cp Problems/problem-1-4.pddl team43/problem-1-4 
    RUNDIR="$(pwd)/team43/problem-1-4"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-1-4.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_1-4.txt
    
    mkdir team43/problem-2-1
    mkdir team43/problem-2-1/tmp 
    cp Problems/domain.pddl team43/problem-2-1 
    cp Problems/problem-2-1.pddl team43/problem-2-1 
    RUNDIR="$(pwd)/team43/problem-2-1"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-2-1.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_2-1.txt
    
    mkdir team43/problem-2-2
    mkdir team43/problem-2-2/tmp 
    cp Problems/domain.pddl team43/problem-2-2 
    cp Problems/problem-2-2.pddl team43/problem-2-2 
    RUNDIR="$(pwd)/team43/problem-2-2"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-2-2.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_2-2.txt
    
    mkdir team43/problem-2-3
    mkdir team43/problem-2-3/tmp 
    cp Problems/domain.pddl team43/problem-2-3 
    cp Problems/problem-2-3.pddl team43/problem-2-3 
    RUNDIR="$(pwd)/team43/problem-2-3"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-2-3.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_2-3.txt
    
    mkdir team43/problem-3-1
    mkdir team43/problem-3-1/tmp 
    cp Problems/domain.pddl team43/problem-3-1 
    cp Problems/problem-3-1.pddl team43/problem-3-1 
    RUNDIR="$(pwd)/team43/problem-3-1"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-3-1.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_3-1.txt
    
    mkdir team43/problem-3-2
    mkdir team43/problem-3-2/tmp 
    cp Problems/domain.pddl team43/problem-3-2 
    cp Problems/problem-3-2.pddl team43/problem-3-2 
    RUNDIR="$(pwd)/team43/problem-3-2"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-3-2.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_3-2.txt
        
    mkdir team43/problem-4-1
    mkdir team43/problem-4-1/tmp 
    cp Problems/domain.pddl team43/problem-4-1 
    cp Problems/problem-4-1.pddl team43/problem-4-1 
    RUNDIR="$(pwd)/team43/problem-4-1"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-4-1.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_4-1.txt
    
    mkdir team43/problem-4-2
    mkdir team43/problem-4-2/tmp 
    cp Problems/domain.pddl team43/problem-4-2 
    cp Problems/problem-4-2.pddl team43/problem-4-2 
    RUNDIR="$(pwd)/team43/problem-4-2"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-4-2.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_4-2.txt
    
    mkdir team43/problem-5-1 
    mkdir team43/problem-5-1/tmp
    cp Problems/domain.pddl team43/problem-5-1 
    cp Problems/problem-5-1.pddl team43/problem-5-1 
    RUNDIR="$(pwd)/team43/problem-5-1"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-5-1.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_5-1.txt

    mkdir team43/problem-6-1 
    mkdir team43/problem-6-1/tmp
    cp Problems/domain.pddl team43/problem-6-1 
    cp Problems/problem-6-1.pddl team43/problem-6-1 
    RUNDIR="$(pwd)/team43/problem-6-1"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-6-1.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_6-1.txt
    
    mkdir team43/problem-6-2 
    mkdir team43/problem-6-2/tmp
    cp Problems/domain.pddl team43/problem-6-2 
    cp Problems/problem-6-2.pddl team43/problem-6-2 
    RUNDIR="$(pwd)/team43/problem-6-2"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-6-2.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_6-2.txt
    
    mkdir team43/problem-6-3 
    mkdir team43/problem-6-3/tmp
    cp Problems/domain.pddl team43/problem-6-3 
    cp Problems/problem-6-3.pddl team43/problem-6-3 
    RUNDIR="$(pwd)/team43/problem-6-3"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-6-3.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_6-3.txt
    
    mkdir team43/problem-6-4 
    mkdir team43/problem-6-4/tmp
    cp Problems/domain.pddl team43/problem-6-4 
    cp Problems/problem-6-4.pddl team43/problem-6-4 
    RUNDIR="$(pwd)/team43/problem-6-4"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-6-4.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_6-4.txt 
   
    mkdir team43/problem-6-5 
    mkdir team43/problem-6-5/tmp
    cp Problems/domain.pddl team43/problem-6-5 
    cp Problems/problem-6-5.pddl team43/problem-6-5 
    RUNDIR="$(pwd)/team43/problem-6-5"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-6-5.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_6-5.txt
    
    mkdir team43/problem-7-1 
    mkdir team43/problem-7-1/tmp
    cp Problems/domain.pddl team43/problem-7-1 
    cp Problems/problem-7-1.pddl team43/problem-7-1 
    RUNDIR="$(pwd)/team43/problem-7-1"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-7-1.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_7-1.txt
    
    mkdir team43/problem-7-2 
    mkdir team43/problem-7-2/tmp
    cp Problems/domain.pddl team43/problem-7-2 
    cp Problems/problem-7-2.pddl team43/problem-7-2 
    RUNDIR="$(pwd)/team43/problem-7-2"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-7-2.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_7-2.txt
    
    mkdir team43/problem-7-3 
    mkdir team43/problem-7-3/tmp
    cp Problems/domain.pddl team43/problem-7-3 
    cp Problems/problem-7-3.pddl team43/problem-7-3 
    RUNDIR="$(pwd)/team43/problem-7-3"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-7-3.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_7-3.txt

    mkdir team43/problem-8-1 
    mkdir team43/problem-8-1/tmp
    cp Problems/domain.pddl team43/problem-8-1 
    cp Problems/problem-8-1.pddl team43/problem-8-1 
    RUNDIR="$(pwd)/team43/problem-8-1"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-8-1.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_8-1.txt

    mkdir team43/problem-8-2 
    mkdir team43/problem-8-2/tmp
    cp Problems/domain.pddl team43/problem-8-2 
    cp Problems/problem-8-2.pddl team43/problem-8-2 
    RUNDIR="$(pwd)/team43/problem-8-2"
    DOMAIN="$RUNDIR/domain.pddl"
    PROBLEM="$RUNDIR/problem-8-2.pddl"
    ABS_TMP_DIR="$RUNDIR/tmp"
    ulimit -t 1800                           
    ulimit -v 8388608
    singularity run -C -B $ABS_TMP_DIR:/tmp -H $RUNDIR planner_team43.img $DOMAIN $PROBLEM sas_plan > $RUNDIR/outputCMD_8-2.txt
