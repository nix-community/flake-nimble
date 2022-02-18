{
  description = ''Nim-SMBExec - SMBExec implementation in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-smbexec-master.flake = false;
  inputs.src-smbexec-master.type = "github";
  inputs.src-smbexec-master.owner = "elddy";
  inputs.src-smbexec-master.repo = "smb-Nim";
  inputs.src-smbexec-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-smbexec-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-smbexec-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-smbexec-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}