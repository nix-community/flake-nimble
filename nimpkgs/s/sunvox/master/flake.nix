{
  description = ''Bindings for SunVox modular synthesizer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sunvox-master.flake = false;
  inputs.src-sunvox-master.type = "github";
  inputs.src-sunvox-master.owner = "exelotl";
  inputs.src-sunvox-master.repo = "nim-sunvox";
  inputs.src-sunvox-master.ref = "refs/heads/master";
  inputs.src-sunvox-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sunvox-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sunvox-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sunvox-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}