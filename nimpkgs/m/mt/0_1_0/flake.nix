{
  description = ''A simple TLDR pages client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-mt-0_1_0.flake = false;
  inputs.src-mt-0_1_0.type = "other";
  inputs.src-mt-0_1_0.owner = "eqf0";
  inputs.src-mt-0_1_0.repo = "mt";
  inputs.src-mt-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-mt-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mt-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mt-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mt-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}