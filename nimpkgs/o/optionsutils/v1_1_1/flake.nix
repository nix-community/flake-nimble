{
  description = ''Utility macros for easier handling of options in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-optionsutils-v1_1_1.flake = false;
  inputs.src-optionsutils-v1_1_1.type = "github";
  inputs.src-optionsutils-v1_1_1.owner = "PMunch";
  inputs.src-optionsutils-v1_1_1.repo = "nim-optionsutils";
  inputs.src-optionsutils-v1_1_1.ref = "refs/tags/v1.1.1";
  inputs.src-optionsutils-v1_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-optionsutils-v1_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-optionsutils-v1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-optionsutils-v1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}