{
  description = ''One Time Password library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-otp-master.flake = false;
  inputs.src-otp-master.type = "github";
  inputs.src-otp-master.owner = "OpenSystemsLab";
  inputs.src-otp-master.repo = "otp.nim";
  inputs.src-otp-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-otp-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-otp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-otp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}