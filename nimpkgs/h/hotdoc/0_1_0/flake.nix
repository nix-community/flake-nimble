{
  description = ''Single Page Documentation Generator'';
  inputs.src-hotdoc-0_1_0.flake = false;
  inputs.src-hotdoc-0_1_0.type = "github";
  inputs.src-hotdoc-0_1_0.owner = "willyboar";
  inputs.src-hotdoc-0_1_0.repo = "hotdoc";
  inputs.src-hotdoc-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."docopt".url = "path:../../../d/docopt";
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-hotdoc-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hotdoc-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hotdoc-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}