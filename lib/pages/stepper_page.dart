import 'package:flutter/material.dart';
import 'package:map_rendering/pages/user_data_page.dart';
import 'package:map_rendering/resourses/step_content.dart';

class StepperPage extends StatefulWidget {
  const StepperPage({Key? key}) : super(key: key);

  @override
  State<StepperPage> createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  
  int currentStep=0;
  
  List<Step> steps=const[
    Step(title: Icon(Icons.arrow_drop_down_circle),
        content: StepContent(),
    isActive: true),
    Step(title: Icon(Icons.arrow_drop_down_circle),
      content: StepContent(),),
    Step(title: Icon(Icons.arrow_drop_down_circle),
      content: StepContent(),),
    Step(title: Icon(Icons.arrow_drop_down_circle),
      content: StepContent(),
    state: StepState.complete
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Stepper(
          steps: steps,
          currentStep: this.currentStep,
          type: StepperType.vertical,
          onStepTapped: (step){
            setState(() {
              currentStep=step;
            });
          },
          onStepContinue: (){
            if(currentStep < steps.length-1){
              currentStep = currentStep+1;
            }
            else{
              currentStep=0;
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>const UserDataPage()),),
        child: const Icon(Icons.record_voice_over),
      ),
    );
  }
}
