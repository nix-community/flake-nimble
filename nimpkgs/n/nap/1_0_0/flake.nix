{
  description = ''Argument parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nap-1_0_0.flake = false;
  inputs.src-nap-1_0_0.type = "github";
  inputs.src-nap-1_0_0.owner = "madprops";
  inputs.src-nap-1_0_0.repo = "nap";
  inputs.src-nap-1_0_0.ref = "refs/tags/1.0.0";
  inputs.src-nap-1_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nap-1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nap-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nap-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}