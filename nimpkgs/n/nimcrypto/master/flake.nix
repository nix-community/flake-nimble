{
  description = ''Nim cryptographic library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimcrypto-master.flake = false;
  inputs.src-nimcrypto-master.type = "github";
  inputs.src-nimcrypto-master.owner = "cheatfate";
  inputs.src-nimcrypto-master.repo = "nimcrypto";
  inputs.src-nimcrypto-master.ref = "refs/heads/master";
  inputs.src-nimcrypto-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimcrypto-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcrypto-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimcrypto-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}