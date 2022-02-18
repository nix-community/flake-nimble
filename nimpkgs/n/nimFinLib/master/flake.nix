{
  description = ''Financial Library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimFinLib-master.flake = false;
  inputs.src-nimFinLib-master.type = "github";
  inputs.src-nimFinLib-master.owner = "qqtop";
  inputs.src-nimFinLib-master.repo = "NimFinLib";
  inputs.src-nimFinLib-master.ref = "refs/heads/master";
  
  
  inputs."https://github.com/qqtop/nimcx".type = "github";
  inputs."https://github.com/qqtop/nimcx".owner = "riinr";
  inputs."https://github.com/qqtop/nimcx".repo = "flake-nimble";
  inputs."https://github.com/qqtop/nimcx".ref = "flake-pinning";
  inputs."https://github.com/qqtop/nimcx".dir = "nimpkgs/h/https://github.com/qqtop/nimcx";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimFinLib-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimFinLib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimFinLib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}