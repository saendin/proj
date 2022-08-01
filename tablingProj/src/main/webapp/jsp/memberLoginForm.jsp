<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Tabling-login</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css"
    />
    <link rel="stylesheet" href="../css/memberLoginForm.css" />
  </head>
  <body>
    <!-- partial:index.partial.html -->
    <!-- <a href="https://front.codes/" class="logo" target="_blank">
      <img src="https://assets.codepen.io/1462889/fcy.png" alt="" />
    </a> -->

    <div class="section">
      <div class="container">
        <div class="row full-height justify-content-center">
          <div class="col-12 text-center align-self-center py-5">
            <div class="section pb-5 pt-5 pt-sm-2 text-center">
              <h1>Welcome to Tabling</h1>
              <h6 class="mb-0 pb-3">
                <span>Log In </span><span>Sign Up</span>
              </h6>
              <input
                class="checkbox"
                type="checkbox"
                id="reg-log"
                name="reg-log"
              />
              <label for="reg-log"></label>
              <div class="card-3d-wrap mx-auto">
                <div class="card-3d-wrapper">
                  <div class="card-front">
                    <div class="center-wrap">
                      <div class="section text-center">
                        <h4 class="mb-4 pb-3">Log In</h4>
                        <div class="form-group">
                          <input
                            type="email"
                            name="logemail"
                            class="form-style"
                            placeholder="Your Email"
                            id="logemail"
                            autocomplete="off"
                          />
                          <i class="input-icon uil uil-at"></i>
                        </div>
                        <div class="form-group mt-2">
                          <input
                            type="password"
                            name="logpass"
                            class="form-style"
                            placeholder="Your Password"
                            id="logpass"
                            autocomplete="off"
                          />
                          <i class="input-icon uil uil-lock-alt"></i>
                        </div>
                        <a href="#" class="btn mt-4">submit</a>
                        <p class="mb-0 mt-4 text-center">
                          <a href="#0" class="link">Forgot your password?</a>
                        </p>
                      </div>
                    </div>
                  </div>
                  <div class="card-back">
                    <div class="center-wrap">
                      <div class="section text-center">
                        <h4 class="mb-4 pb-3">Sign Up</h4>

                        <form action="../memberInsert.do" method="post">
                          <div class="form-group">
                            <input
                              type="text"
                              name="reg_id"
                              class="form-style"
                              placeholder="Your Id"
                              id="reg_id"
                              autocomplete="off"
                            />
                            <i class="input-icon uil uil-user"></i>
                          </div>
                          <div class="form-group mt-2">
                            <input
                              type="password"
                              name="reg_pwd"
                              class="form-style"
                              placeholder="Your Password"
                              id="reg_pwd"
                              autocomplete="off"
                            />
                            <i class="input-icon uil uil-lock-alt"></i>
                          </div>

                          <div class="form-group mt-2">
                            <input
                              type="text"
                              name="reg_phone"
                              class="form-style"
                              placeholder="Your Phone Number"
                              id="reg_phone"
                              autocomplete="off"
                            />
                            <i class="input-icon uil uil-phone"></i>
                          </div>

                          <div class="form-group mt-2">
                            <input
                              type="text"
                              name="reg_nickname"
                              class="form-style"
                              placeholder="Your Nickname"
                              id="reg_nickname"
                              autocomplete="off"
                            />
                            <i class="input-icon uil uil-user-square"></i>
                          </div>

                          <div class="form-group mt-2">
                            <input
                              type="text"
                              name="reg_role"
                              class="form-style"
                              placeholder="Your Role"
                              id="reg_role"
                              autocomplete="off"
                            />
                            <i class="input-icon uil uil-dice-three"></i>
                          </div>

                          <!-- <a href="#" class="btn mt-4">submit</a> -->
                          <input
                            type="submit"
                            class="btn mt-4"
                            value="SUBMIT"
                          />
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
