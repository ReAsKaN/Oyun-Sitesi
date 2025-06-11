<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="MiniOyunWebSite.Anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="Assets/CSS/Anasayfa.css" rel="stylesheet" />
<div class="container mt-4">
    <div class="d-flex justify-content-center mb-4">
    <button class="btn btn-secondary filter-btn" data-category="all">All</button>
    <button class="btn btn-success filter-btn" data-category="casual">Casual</button>
    <button class="btn btn-warning filter-btn" data-category="puzzle">Puzzle</button>
</div>
        <div class="row">
            <div class="col-md-3 mb-4" data-category="casual">
                <a href="WebForm1.aspx" class="game-link" data-login-required="true" onmouseover="checkLogin(this)" onclick="redirectIfNotLoggedIn(event, this)">
                    <div class='card text-center game-card <% if (Session["username"] == null) { %>locked<% } %>'>
                        <img src="Assets/Images/flappybirdthumb.jpg" class="card-img-top" alt="Flappy Bird" />
                        <div class="card-body">
                            <h5 class="card-title">Flappy Bird</h5>
                            <p class="card-text">🐣 3K Players</p>
                            <span class="badge bg-success">NEW</span>
                            <span class="badge bg-secondary">CASUAL</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-3 mb-4" data-category="casual">
                <a href="CandyCrush.aspx" class="game-link" data-login-required="true" onmouseover="checkLogin(this)" onclick="redirectIfNotLoggedIn(event, this)">
                    <div class='card text-center game-card <% if (Session["username"] == null) { %>locked<% } %>'>
                        <img src="Assets/Images/candycrushthumb.png" class="card-img-top" alt="Candy Crush" />
                        <div class="card-body">
                            <h5 class="card-title">Candy Crush</h5>
                            <p class="card-text">🍭 10K Players</p>
                            <span class="badge bg-success">NEW</span>
                            <span class="badge bg-secondary">CASUAL</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-3 mb-4" data-category="casual">
                <a href="DoodleJump.aspx" class="game-link" data-login-required="true" onmouseover="checkLogin(this)" onclick="redirectIfNotLoggedIn(event, this)">
                    <div class='card text-center game-card <% if (Session["username"] == null) { %>locked<% } %>'>
                        <img src="Assets/Images/doodlejumpthumb.png" class="card-img-top" alt="Doodle Jump" />
                        <div class="card-body">
                            <h5 class="card-title">Doodle Jump</h5>
                            <p class="card-text">👽 5K Players</p>
                            <span class="badge bg-success">NEW</span>
                            <span class="badge bg-secondary">CASUAL</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-3 mb-4" data-category="puzzle">
                <a href="2048.aspx" class="game-link" data-login-required="true" onmouseover="checkLogin(this)" onclick="redirectIfNotLoggedIn(event, this)">
                    <div class='card text-center game-card <% if (Session["username"] == null) { %>locked<% } %>'>
                        <img src="Assets/Images/2048thumb.png" class="card-img-top" alt="2048" />
                        <div class="card-body">
                            <h5 class="card-title">2048</h5>
                            <p class="card-text">🧩 7K Players</p>
                            <span class="badge bg-success">NEW</span>
                            <span class="badge bg-secondary">PUZZLE</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-3 mb-4" data-category="puzzle">
                <a href="Sudoku.aspx" class="game-link" data-login-required="true" onmouseover="checkLogin(this)" onclick="redirectIfNotLoggedIn(event, this)">
                    <div class='card text-center game-card <% if (Session["username"] == null) { %>locked<% } %>'>
                        <img src="Assets/Images/sudokuthumb.png" class="card-img-top" alt="Sudoku" />
                        <div class="card-body">
                            <h5 class="card-title">Sudoku</h5>
                            <p class="card-text">🧩 8K Players</p>
                            <span class="badge bg-success">NEW</span>
                            <span class="badge bg-secondary">PUZZLE</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-3 mb-4" data-category="casual">
                <a href="Snake.aspx" class="game-link" data-login-required="true" onmouseover="checkLogin(this)" onclick="redirectIfNotLoggedIn(event, this)">
                    <div class='card text-center game-card <% if (Session["username"] == null) { %>locked<% } %>'>
                        <img src="Assets/Images/snakethumb.png" class="card-img-top" alt="Snake" />
                        <div class="card-body">
                            <h5 class="card-title">Snake</h5>
                            <p class="card-text">🐍 4K Players</p>
                            <span class="badge bg-success">NEW</span>
                            <span class="badge bg-secondary">CASUAL</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-3 mb-4" data-category="puzzle">
                <a href="Minesweeper.aspx" class="game-link" data-login-required="true" onmouseover="checkLogin(this)" onclick="redirectIfNotLoggedIn(event, this)">
                    <div class='card text-center game-card <% if (Session["username"] == null) { %>locked<% } %>'>
                        <img src="Assets/Images/minesweeperthumb.png" class="card-img-top" alt="Minesweeper" />
                        <div class="card-body">
                            <h5 class="card-title">Minesweeper</h5>
                            <p class="card-text">🧩 6K Players</p>
                            <span class="badge bg-success">NEW</span>
                            <span class="badge bg-secondary">PUZZLE</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-3 mb-4" data-category="casual">
                <a href="ChromeDino.aspx" class="game-link" data-login-required="true" onmouseover="checkLogin(this)" onclick="redirectIfNotLoggedIn(event, this)">
                    <div class='card text-center game-card <% if (Session["username"] == null) { %>locked<% } %>'>
                        <img src="Assets/Images/chromedinothumb.png" class="card-img-top" alt="Chrome Dino" />
                        <div class="card-body">
                            <h5 class="card-title">Chrome Dino</h5>
                            <p class="card-text">🦖 12K Players</p>
                            <span class="badge bg-success">NEW</span>
                            <span class="badge bg-secondary">CASUAL</span>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
    
    
    
   <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <script>
        var isLoggedIn = '<%= Session["username"] != null ? "true" : "false" %>';

        
        function checkLogin(element) {
            if (element.getAttribute("data-login-required") === "true" && isLoggedIn !== "true") {
                element.title = "You need to log in to play this game.";
            } else {
                element.title = "";
            }
        }

        
        function redirectIfNotLoggedIn(event, element) {
            if (element.getAttribute("data-login-required") === "true" && isLoggedIn !== "true") {
                event.preventDefault();
                alert("Please log in to access this game.");
                window.location.href = "Login.aspx";
            }
        }
</script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const filterButtons = document.querySelectorAll(".filter-btn");
            const gameCards = document.querySelectorAll(".row > [data-category]");

            filterButtons.forEach(button => {
                button.addEventListener("click", function () {
                    const category = this.getAttribute("data-category");

                    
                    filterButtons.forEach(btn => btn.classList.remove("active"));
                    this.classList.add("active");

                    
                    gameCards.forEach(card => {
                        if (category === "all" || card.getAttribute("data-category") === category) {
                            card.style.display = "";
                        } else {
                            card.style.display = "none"; 
                        }
                    });
                });
            });
        });
    </script>
</asp:Content>
