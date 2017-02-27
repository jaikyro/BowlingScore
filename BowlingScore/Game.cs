using System.Collections.Generic;
using System.Linq;

namespace BowlingScore
{
    public class Game
    {
        public Game(int[][] pointsArray)
        {
            var frameCount = 0; //counter for numbering each frame
            var ballCount = 0; //counter for numbering each ball
            var labelCount = 0; //counter for matching each ball with the correct label depending on its placement
            var frames = new List<Frame>(); //list where each frame will be added
            foreach (var item in pointsArray)
            {
                var frame = new Frame();
                var balls = new List<Ball>();

                //if strike, only create 1 Ball object and add it to the frame
                if (item[0] == 10 && item[1] != 10)
                {
                    ++ballCount;
                    //if the frame number is 9 or less, skip 1 label. else, skip none
                    if (frameCount < 9)
                    {
                        labelCount += 2;
                    }
                    else labelCount += 1;
                    var newball = new Ball {Pins = item[0], Number = ballCount, Label = labelCount};
                    balls.Add(newball);
                    frame.Strike = true;
                }
                //if not a strike, create and add both
                else
                {
                    ++ballCount;
                    ++labelCount;
                    var newball1 = new Ball {Pins = item[0], Number = ballCount, Label = labelCount};
                    ++ballCount;
                    ++labelCount;
                    var newball2 = new Ball {Pins = item[1], Number = ballCount, Label = labelCount};
                    balls.Add(newball1);
                    balls.Add(newball2);
                    if (newball1.Pins + newball2.Pins == 10)
                    {
                        frame.Spare = true;
                    }
                }

                frame.Number = ++frameCount;
                frame.Balls = balls;
                frames.Add(frame);
            }
            Frames = frames;
            if (Frames.Count == 11)
            {
                //the purpose of this method is to compensate for the json format splitting frame no 10 into two arrays (if 3 balls have been rolled)
                ConcatFrame10();
            }
        }

        public List<Frame> Frames { get; set; }

        public void ConcatFrame10()
        {
            //takes balls from frame 11 and adds them to frame 10, then removes frame 11
            foreach (var ball in Frames[10].Balls)
            {
                Frames[9].Balls.Add(ball);
            }
            Frames.RemoveAt(10);
        }

        public int[] CalcScore(List<Frame> frames)
        {
            //select all balls only
            var ballList = from x in frames
                from y in x.Balls
                select y;

            List<int> totals = new List<int>();
            var total = 0;
            foreach (var frame in frames) //scores are calculated per frame and added to each Frame object
            {
                var count = frame.Balls.Sum(ball => ball.Pins); //counter for adding total of pins
                var current = frame.Balls.Last();

                if (current.Number < ballList.Count()) //making sure that the next ball exists
                {
                    if (frame.Spare) //if a spare is rolled, frame bonus equals the value of the next ball
                    {
                        var nextball = ballList.ElementAt(frame.Balls.Last().Number);
                        frame.Bonus = nextball.Pins;
                    }
                }
                if (current.Number < ballList.Count() - 1) //making sure that the next 2 balls exist
                {
                    if (frame.Strike) //if a strike is rolled, frame bonus equals the value of the next 2 balls
                    {
                        var nextball = ballList.ElementAt(current.Number);
                        var nextball2 = ballList.ElementAt(current.Number + 1);
                        frame.Bonus = nextball.Pins + nextball2.Pins;
                    }
                }

                frame.Score = count + frame.Bonus;
                    //add pin total and spare/strike bonus and assign it to the frames score
                total += frame.Score; //total score of all frames
                totals.Add(total);
            }
            return totals.ToArray();
        }
    }
}