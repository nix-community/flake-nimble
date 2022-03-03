{
  description = ''One Time Password library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-OTP-master.flake = false;
  inputs.src-OTP-master.type = "github";
  inputs.src-OTP-master.owner = "OpenSystemsLab";
  inputs.src-OTP-master.repo = "otp.nim";
  inputs.src-OTP-master.ref = "refs/heads/master";
  inputs.src-OTP-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."hmac".type = "github";
  # inputs."hmac".owner = "riinr";
  # inputs."hmac".repo = "flake-nimble";
  # inputs."hmac".ref = "flake-pinning";
  # inputs."hmac".dir = "nimpkgs/h/hmac";
  # inputs."hmac".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hmac".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."base32".type = "github";
  # inputs."base32".owner = "riinr";
  # inputs."base32".repo = "flake-nimble";
  # inputs."base32".ref = "flake-pinning";
  # inputs."base32".dir = "nimpkgs/b/base32";
  # inputs."base32".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."base32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-otp-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-otp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-otp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}