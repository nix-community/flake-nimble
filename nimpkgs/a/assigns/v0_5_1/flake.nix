{
  description = ''syntax sugar for assignments'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-assigns-v0_5_1.flake = false;
  inputs.src-assigns-v0_5_1.type = "github";
  inputs.src-assigns-v0_5_1.owner = "metagn";
  inputs.src-assigns-v0_5_1.repo = "assigns";
  inputs.src-assigns-v0_5_1.ref = "refs/tags/v0.5.1";
  inputs.src-assigns-v0_5_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-assigns-v0_5_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-assigns-v0_5_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-assigns-v0_5_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}