{
  description = ''Base45 encoder and decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-base45-1_0_0.flake = false;
  inputs.src-base45-1_0_0.type = "other";
  inputs.src-base45-1_0_0.owner = "~ehmry";
  inputs.src-base45-1_0_0.repo = "base45";
  inputs.src-base45-1_0_0.ref = "refs/tags/1.0.0";
  inputs.src-base45-1_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-base45-1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-base45-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-base45-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}