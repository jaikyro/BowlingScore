using System.Collections.Generic;

namespace BowlingScore
{
    public class Frame
    {
        public int Number { get; set; }
        public List<Ball> Balls { get; set; }
        public bool Strike { get; set; }
        public bool Spare { get; set; }
        public int Bonus { get; set; }
        public int Score { get; set; }
    }
}