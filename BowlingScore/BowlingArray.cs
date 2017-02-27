using Newtonsoft.Json;

namespace BowlingScore
{
    public class BowlingArray
    {
        [JsonProperty("points")]
        public int[][] points { get; set; }

        [JsonProperty("token")]
        public string token { get; set; }
    }
}