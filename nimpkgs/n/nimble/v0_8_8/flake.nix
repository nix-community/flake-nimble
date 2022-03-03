{
  description = ''Nimble package manager'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimble-v0_8_8.flake = false;
  inputs.src-nimble-v0_8_8.type = "github";
  inputs.src-nimble-v0_8_8.owner = "nim-lang";
  inputs.src-nimble-v0_8_8.repo = "nimble";
  inputs.src-nimble-v0_8_8.ref = "refs/tags/v0.8.8";
  inputs.src-nimble-v0_8_8.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimble-v0_8_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimble-v0_8_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimble-v0_8_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}