{
  description = ''Interface for reading per bits'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-bitstreams-main.flake = false;
  inputs.src-bitstreams-main.type = "github";
  inputs.src-bitstreams-main.owner = "sealmove";
  inputs.src-bitstreams-main.repo = "bitstreams";
  inputs.src-bitstreams-main.ref = "refs/heads/main";
  inputs.src-bitstreams-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bitstreams-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitstreams-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bitstreams-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}