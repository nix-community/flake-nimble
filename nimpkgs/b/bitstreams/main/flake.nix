{
  description = ''Interface for reading per bits'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bitstreams-main.flake = false;
  inputs.src-bitstreams-main.type = "github";
  inputs.src-bitstreams-main.owner = "sealmove";
  inputs.src-bitstreams-main.repo = "bitstreams";
  inputs.src-bitstreams-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bitstreams-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitstreams-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bitstreams-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}