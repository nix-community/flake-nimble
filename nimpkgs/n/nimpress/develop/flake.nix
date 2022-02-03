{
  description = ''Fast and simple calculation of polygenic scores'';
  inputs.src-nimpress-develop.flake = false;
  inputs.src-nimpress-develop.type = "github";
  inputs.src-nimpress-develop.owner = "mpinese";
  inputs.src-nimpress-develop.repo = "nimpress";
  inputs.src-nimpress-develop.ref = "refs/heads/develop";
  
  
  inputs."docopt".url = "path:../../../d/docopt";
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  
  inputs."hts".url = "path:../../../h/hts";
  inputs."hts".type = "github";
  inputs."hts".owner = "riinr";
  inputs."hts".repo = "flake-nimble";
  inputs."hts".ref = "flake-pinning";
  inputs."hts".dir = "nimpkgs/h/hts";

  
  inputs."lapper".url = "path:../../../l/lapper";
  inputs."lapper".type = "github";
  inputs."lapper".owner = "riinr";
  inputs."lapper".repo = "flake-nimble";
  inputs."lapper".ref = "flake-pinning";
  inputs."lapper".dir = "nimpkgs/l/lapper";

  outputs = { self, nixpkgs, src-nimpress-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpress-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimpress-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}