using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.DataAccess.Client;
using System.Data;

namespace oefening1
{
    class Database
    {
        private OracleConnection connection;

        public Database()
        {
            this.connection = new OracleConnection("DATA SOURCE=192.168.15.50:1521/fhictora;PERSIST SECURITY INFO=True;USER ID=DBI324928; PASSWORD=oBVmntOXe6");
        }

        public string OpenConnection()
        {
            try
            {
                connection.Open();
                return null;
            }
            catch (OracleException exception)
            {
                return exception.Message;
            }
        }

        public void CloseConnection()
        {
            connection.Close();
        }

        public List<Deck> GetDecks(int playerID)
        {
            string connectionResult = null;
            List<Deck> returnDecks = new List<Deck>();
            List<Card> cards = new List<Card>();

            connectionResult = this.OpenConnection();

            if (connectionResult == null)
            {
                OracleCommand command = new OracleCommand();

                command.CommandText = "SELECT DECK.ID AS DECKID, DECK.OMSCHRIJVING, CARD.ID AS CARDID, CARD.NAAM, CARD.AFBEELDING FROM DECKCARD LEFT JOIN CARD ON CARD.ID = DECKCARD.CARDID LEFT JOIN DECK ON DECK.ID = DECKCARD.DECKID WHERE DECK.PLAYERID = :playerid ORDER BY DECK.ID";
                command.Parameters.Add("playerid", playerID);
                
                try
                {
                    command.Connection = connection;
                    OracleDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        int deckID = Convert.ToInt32(reader["DECKID"]);

                        Deck deck = returnDecks.Find(d => d.DatabaseID == deckID);
                        if (deck == null)
                        {
                            string omschrijving = reader["omschrijving"].ToString();
                            deck = new Deck(deckID, omschrijving);
                            returnDecks.Add(deck);
                        }

                        string naam = reader["naam"].ToString();
                        Card card = cards.Find(c => c.Naam == naam);

                        if (card == null)
                        {
                            string afbeeldingPath = reader["afbeelding"].ToString();
                            card = new Card(naam, afbeeldingPath);
                            cards.Add(card);
                        }

                        deck.AddCard(card);
                        card.AddDeck(deck);
                    }
                }
                catch (Exception e)
                {
                    connectionResult = e.Message;
                }
                finally
                {
                    this.CloseConnection();
                }
            }

            return returnDecks;
        }
    }
}
