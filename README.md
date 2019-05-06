# Native iOS Quiz App
#### This is a quiz app build for iOS using xcode and swift 4. The app displays five random questions from the list and shows result at last

### Working of project
This application consists total three views. 
- **FirstViewController.swift** (first screen which asks for name of person who will take the quiz)
- **ViewController.swift** (main screen where are the questions will be asked)
- **LastViewController.swift** (last screen where total score out of 5 is displayed)
#### Code Logic
In **FirstViewController.swift** a global variable 'name' is defined to use the name in the LastViewController.
```swift
/*The class has only two fields and one method. the user will enter 
name and on pressing the button the control will go to ViewController.swift*/
class FirstViewController: UIViewController {
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var btnStart: UIButton!
    @IBAction func showMainView(_ sender: Any) {}
```

In **ViewController.swift** three arrays were designed. First contains all the questions. Second is a 2D array which contains four options for every  single question. The third array contains the right answer index fo the second array.

```swift
/*This function is used to randomly select 5 question 
out of 10 and add the index to 'ques' array*/
func question_selection(){}

/*this function contains the functionality to 
display next question to the user*/
func NextQuestion(quesNumber: Int) {}

/*This is IBAction which is connected to all the four answers 
which are show to user. On clicking any button it checks if the tag of
button matches with answers index*/
func btnpress0(){}
```
In **LastViewController.swift** a logic is defined which will show different messages to user based on score
```swift
  if (count <= 2)
        {
            message = "Please Try Again"
            tryAgain.isHidden = false
        }
        else if (count == 3)
        {
            message = "Good Job!"
        }
        else if (count == 4)
        {
            message = "Excellent Work!"
        }
        else if (count == 5)
        {
            message = "Yor are a genius!"
        }
```
