{
  description = ''Nim cryptographic library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimcrypto-master.flake = false;
  inputs.src-nimcrypto-master.type = "github";
  inputs.src-nimcrypto-master.owner = "cheatfate";
  inputs.src-nimcrypto-master.repo = "nimcrypto";
  inputs.src-nimcrypto-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimcrypto-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcrypto-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimcrypto-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}