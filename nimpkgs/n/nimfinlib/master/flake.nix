{
  description = ''Financial Library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimfinlib-master.flake = false;
  inputs.src-nimfinlib-master.type = "github";
  inputs.src-nimfinlib-master.owner = "qqtop";
  inputs.src-nimfinlib-master.repo = "NimFinLib";
  inputs.src-nimfinlib-master.ref = "refs/heads/master";
  
  
  inputs."https://github.com/qqtop/nimcx".type = "github";
  inputs."https://github.com/qqtop/nimcx".owner = "riinr";
  inputs."https://github.com/qqtop/nimcx".repo = "flake-nimble";
  inputs."https://github.com/qqtop/nimcx".ref = "flake-pinning";
  inputs."https://github.com/qqtop/nimcx".dir = "nimpkgs/h/https://github.com/qqtop/nimcx";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfinlib-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfinlib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfinlib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}