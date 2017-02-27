using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using BowlingScore;

namespace BowlingTests
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestNormal() //test of score without spares or strikes
        {
            var bowl = new BowlingArray();
            int[][] jaggedArray2 = new int[][]
            {
                new int[] {1,3},
                new int[] {0,2},
                new int[] {9,0}
            };

            bowl.points = jaggedArray2;
            var game = new Game(bowl.points);
            var score = game.CalcScore(game.Frames);
            Assert.AreEqual(15, score);
        }
        [TestMethod]
        public void TestSpares() //test of score with spares
        {
            var bowl = new BowlingArray();
            int[][] jaggedArray2 = new int[][]
            {
                new int[] {1,3},
                new int[] {8,2},
                new int[] {0,3},
                new int[] {4,6},
                new int[] {0,2},
                new int[] {9,0}
            };

            bowl.points = jaggedArray2;
            var game = new Game(bowl.points);
            var score = game.CalcScore(game.Frames);
            Assert.AreEqual(38, score);
        }
        [TestMethod]
        public void TestStrikes() //test of score with strikes
        {
            var bowl = new BowlingArray();
            int[][] jaggedArray2 = new int[][]
            {
                new int[] {1,3},
                new int[] {10,0},
                new int[] {10,0},
                new int[] {5,3},
                new int[] {9,0}
            };

            bowl.points = jaggedArray2;
            var game = new Game(bowl.points);
            var score = game.CalcScore(game.Frames);
            Assert.AreEqual(64, score);
        }
        [TestMethod]

        public void TestAllStrikes() //test of score with 12 strikes
        {
            var bowl = new BowlingArray();
            int[][] jaggedArray2 = new int[][]
            {
                new int[] {10,0},
                new int[] {10,0},
                new int[] {10,0},
                new int[] {10,0},
                new int[] {10,0},
                new int[] {10,0},
                new int[] {10,0},
                new int[] {10,0},
                new int[] {10,0},
                new int[] {10,0},
                new int[] {10,10}
            };

            bowl.points = jaggedArray2;
            var game = new Game(bowl.points);
            var score = game.CalcScore(game.Frames);
            Assert.AreEqual(300, score);
        }
    }
}
