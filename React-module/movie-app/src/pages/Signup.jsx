import React from "react";

const Signup = () => {
  return (
    <div className="container">
      <div className="form-container">
        <h3>Sign Up</h3>
        <form>
          <input type="text" id="name" placeholder="Name" />
          <input type="email" id="email" placeholder="Email or username" />
          <input type="password" id="password" placeholder="Password" />
          <div className="tc">
            <input type="checkbox" id="terms" name="terms" value="terms" />
            <label for="terms"> Agree with terms and conditions</label>
          </div>
          <button type="submit" name="submit" id="submit">
            Sign Up
          </button>
        </form>
        <div className="form-footer">
          Already have an account? <a href="/">Sign In</a>
        </div>
      </div>
    </div>
  );
};

export default Signup;
