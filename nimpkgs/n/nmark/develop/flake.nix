{
  description = ''fast markdown parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nmark-develop.flake = false;
  inputs.src-nmark-develop.type = "github";
  inputs.src-nmark-develop.owner = "kyoheiu";
  inputs.src-nmark-develop.repo = "nmark";
  inputs.src-nmark-develop.ref = "refs/heads/develop";
  
  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nmark-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nmark-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nmark-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}