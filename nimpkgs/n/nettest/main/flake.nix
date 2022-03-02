{
  description = ''Connection Test for Nim Web Applications'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-netTest-main.flake = false;
  inputs.src-netTest-main.type = "github";
  inputs.src-netTest-main.owner = "blmvxer";
  inputs.src-netTest-main.repo = "netTest";
  inputs.src-netTest-main.ref = "refs/heads/main";
  inputs.src-netTest-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-netTest-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-netTest-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-netTest-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}