<!-- Modal -->


<div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-labelledby="signupModalLabel"
  aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content form-input">
      <div class="modal-header">
        <h5 class="modal-title" id="signupModalLabel">Signup to create an Account</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="_handleSignup.php" method="post">
        <div class="modal-body">
          <div class="form-group">
            <label for="signupName1" class="form-label">Name</label>
            <input type="text" class="form-input" id="signupName" name="signupName">
          </div>
          <div class="form-group">
            <label for="signupEmail1" class="form-label">Email</label>
            <input type="text" class="form-input" id="signupEmail" name="signupEmail">
          </div>
          <div class="form-group">
            <label for="signupPassword1" class="form-label">Password</label>
            <input type="password" class="form-input" id="signupPassword" name="signupPassword">
          </div>
          <div class="form-group">
            <label for="signupcPassword1" class="form-label">Confirm Password</label>
            <input type="password" class="form-input" id="signupcPassword" name="signupcPassword">
          </div>

        </div>
        <div class="modal-footer">
          <button type="submit" class="list-link button1">Signup</button>
        </div>
      </form>
    </div>
  </div>
</div>