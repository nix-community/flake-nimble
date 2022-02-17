{
  description = ''Fast and simple calculation of polygenic scores'';
  inputs.src-nimpress-v1_0_0.flake = false;
  inputs.src-nimpress-v1_0_0.type = "github";
  inputs.src-nimpress-v1_0_0.owner = "mpinese";
  inputs.src-nimpress-v1_0_0.repo = "nimpress";
  inputs.src-nimpress-v1_0_0.ref = "refs/tags/v1.0.0";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  
  inputs."hts".type = "github";
  inputs."hts".owner = "riinr";
  inputs."hts".repo = "flake-nimble";
  inputs."hts".ref = "flake-pinning";
  inputs."hts".dir = "nimpkgs/h/hts";

  
  inputs."lapper".type = "github";
  inputs."lapper".owner = "riinr";
  inputs."lapper".repo = "flake-nimble";
  inputs."lapper".ref = "flake-pinning";
  inputs."lapper".dir = "nimpkgs/l/lapper";

  outputs = { self, nixpkgs, src-nimpress-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpress-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimpress-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}