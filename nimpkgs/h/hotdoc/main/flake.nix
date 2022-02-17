{
  description = ''Single Page Documentation Generator'';
  inputs.src-hotdoc-main.flake = false;
  inputs.src-hotdoc-main.type = "github";
  inputs.src-hotdoc-main.owner = "willyboar";
  inputs.src-hotdoc-main.repo = "hotdoc";
  inputs.src-hotdoc-main.ref = "refs/heads/main";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  
  inputs."karax".type = "github";
  inputs."karax".owner = "riinr";
  inputs."karax".repo = "flake-nimble";
  inputs."karax".ref = "flake-pinning";
  inputs."karax".dir = "nimpkgs/k/karax";

  outputs = { self, nixpkgs, src-hotdoc-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hotdoc-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hotdoc-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}