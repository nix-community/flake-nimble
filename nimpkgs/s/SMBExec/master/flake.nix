{
  description = ''Nim-SMBExec - SMBExec implementation in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-SMBExec-master.flake = false;
  inputs.src-SMBExec-master.type = "github";
  inputs.src-SMBExec-master.owner = "elddy";
  inputs.src-SMBExec-master.repo = "SMB-Nim";
  inputs.src-SMBExec-master.ref = "refs/heads/master";
  
  
  inputs."hashlib".type = "github";
  inputs."hashlib".owner = "riinr";
  inputs."hashlib".repo = "flake-nimble";
  inputs."hashlib".ref = "flake-pinning";
  inputs."hashlib".dir = "nimpkgs/h/hashlib";

  
  inputs."hmac".type = "github";
  inputs."hmac".owner = "riinr";
  inputs."hmac".repo = "flake-nimble";
  inputs."hmac".ref = "flake-pinning";
  inputs."hmac".dir = "nimpkgs/h/hmac";

  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, flakeNimbleLib, src-SMBExec-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-SMBExec-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-SMBExec-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}