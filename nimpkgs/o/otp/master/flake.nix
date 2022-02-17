{
  description = ''One Time Password library for Nim'';
  inputs.src-OTP-master.flake = false;
  inputs.src-OTP-master.type = "github";
  inputs.src-OTP-master.owner = "OpenSystemsLab";
  inputs.src-OTP-master.repo = "otp.nim";
  inputs.src-OTP-master.ref = "refs/heads/master";
  
  
  inputs."hmac".type = "github";
  inputs."hmac".owner = "riinr";
  inputs."hmac".repo = "flake-nimble";
  inputs."hmac".ref = "flake-pinning";
  inputs."hmac".dir = "nimpkgs/h/hmac";

  
  inputs."base32".type = "github";
  inputs."base32".owner = "riinr";
  inputs."base32".repo = "flake-nimble";
  inputs."base32".ref = "flake-pinning";
  inputs."base32".dir = "nimpkgs/b/base32";

  outputs = { self, nixpkgs, src-otp-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-otp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-otp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}