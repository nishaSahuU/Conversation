<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content form-input">
            <div class="modal-header">
                <h5 class="modal-title" id="loginModalLabel">Login</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="_handleLogin.php" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="loginEmail" class="form-label">Email</label>
                        <input type="text" class="form-input" id="loginEmail" name="loginEmail"
                            aria-describedby="emailHelp">
                    </div>
                    <div class="form-group">
                        <label for="loginPass" class="form-label">Password</label>
                        <input type="password" class="form-input" id="loginPass" name="loginPass">
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="submit" class="list-link button1">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>