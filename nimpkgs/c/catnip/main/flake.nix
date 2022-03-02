{
  description = ''Assembler for runtime code generation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-catnip-main.flake = false;
  inputs.src-catnip-main.type = "github";
  inputs.src-catnip-main.owner = "RSDuck";
  inputs.src-catnip-main.repo = "catnip";
  inputs.src-catnip-main.ref = "refs/heads/main";
  inputs.src-catnip-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-catnip-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-catnip-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-catnip-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}