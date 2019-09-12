//  Quizzler
//
//  Created by Alex Reckard on 8/24/19.
//
import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank();
    var pickedAnswer : Bool = false;
    var questionNumber : Int = 0;
    var score : Int = 0;
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion();
    };

    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true;
        } else if sender.tag == 2 {
            pickedAnswer = false;
        }
        checkAnswer();
        // Swift does NOT allow you to ++ have to do +=
        questionNumber += 1;
        nextQuestion();
    };
    
    func nextQuestion() {
        if questionNumber < allQuestions.list.count {
            questionLabel.text = allQuestions.list[questionNumber].questionText;
            updateUI();
        } else {
            let alert = UIAlertController(title: "Awesome!", message: "You've finished the all the questions in the quiz, do you want to restart? " , preferredStyle: .alert);
            let restart = UIAlertAction(title: "Restart", style: .default, handler: {
                (UIAlertAction) in
                self.startOver();
            });
            
            alert.addAction(restart);
            present(alert, animated: true, completion: nil);
        };
    };
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer;
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("Correct! :)");
            score += 1;
            print("Correct! :)");
        } else {
            ProgressHUD.showError("Wrong :'(");
            print("Wrong :'(");
        };
    };
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)";
        // change # when adding more questions to bank in model for accurate progess
        progressLabel.text = "\(questionNumber + 1) / 15";
        progressBar.frame.size.width = (view.frame.size.width / 15) * CGFloat(questionNumber);
    };
    
    func startOver() {
        questionNumber = 0;
        score = 0;
        nextQuestion();
    };
};
