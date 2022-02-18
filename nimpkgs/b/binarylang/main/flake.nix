{
  description = ''Binary parser/encoder DSL'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-binarylang-main.flake = false;
  inputs.src-binarylang-main.type = "github";
  inputs.src-binarylang-main.owner = "sealmove";
  inputs.src-binarylang-main.repo = "binarylang";
  inputs.src-binarylang-main.ref = "refs/heads/main";
  
  
  inputs."bitstreams".type = "github";
  inputs."bitstreams".owner = "riinr";
  inputs."bitstreams".repo = "flake-nimble";
  inputs."bitstreams".ref = "flake-pinning";
  inputs."bitstreams".dir = "nimpkgs/b/bitstreams";

  outputs = { self, nixpkgs, flakeNimbleLib, src-binarylang-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-binarylang-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-binarylang-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}