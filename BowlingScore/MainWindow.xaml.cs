using System.Net;
using System.Windows;
using System.Windows.Controls;
using Newtonsoft.Json;
using RestSharp;

namespace BowlingScore
{
    /// <summary>
    ///     Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public RestClient Client { get; set; }
        public MainWindow()
        {
            Client = new RestClient("http://95.85.62.55/api/points");
            InitializeComponent();
            check.Visibility = Visibility.Hidden;
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            check.Visibility = Visibility.Hidden;
            var bArray = GetGame();
            var game = new Game(bArray.points);
            clearLabels();
            var scores = game.CalcScore(game.Frames);
            if (PostGame(bArray.points, bArray.token)) { check.Visibility = Visibility.Visible; };
            fillLabels(game);
        }

        private BowlingArray GetGame()
        {
            var request = new RestRequest(Method.GET);
            IRestResponse response = Client.Execute(request);
            var content = response.Content;
            var result = JsonConvert.DeserializeObject<BowlingArray>(content);
            return result;
        }
        private bool PostGame(int[][] intJag, string token)
        {
            var request = new RestRequest(Method.POST);
            request.AddParameter("points", intJag);
            request.AddParameter("token", token);
            IRestResponse response = Client.Execute(request);
            if (response.StatusDescription == "OK")
            {
                return true;
            }
            else return false;
        }

        //finds all labels and resets their values
        private void clearLabels()
        {
            for (var i = 1; i < 22; i++)
            {
                var label = (Label)FindName("ball" + i);
                if (label != null) label.Content = "-";
            }
            for (var i = 1; i < 11; i++)
            {
                var label = (Label)FindName("frameScore" + i);
                if (label != null) label.Content = "-";
            }
        }

        //fills labels with pin values and frame scores
        private void fillLabels(Game game)
        {
            var score = 0;
            foreach (var frame in game.Frames)
            {
                foreach (var ball in frame.Balls)
                {
                    var label = (Label)FindName("ball" + ball.Label);
                    if (frame.Strike)
                    {
                        if (label != null) label.Content = "X";
                    }
                    else if (frame.Spare && ball.Label % 2 == 0)
                    {
                        if (label != null) label.Content = "/";
                    }
                    else
                    {
                        if (label != null) label.Content = ball.Pins;
                    }
                }
                var f_label = (Label)FindName("frameScore" + frame.Number);
                score += frame.Score;
                if (f_label != null) f_label.Content = score;
            }
        }
    }
}