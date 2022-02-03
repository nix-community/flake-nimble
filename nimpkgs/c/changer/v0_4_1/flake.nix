{
  description = ''A tool for managing a project's changelog'';
  inputs.src-changer-v0_4_1.flake = false;
  inputs.src-changer-v0_4_1.type = "github";
  inputs.src-changer-v0_4_1.owner = "iffy";
  inputs.src-changer-v0_4_1.repo = "changer";
  inputs.src-changer-v0_4_1.ref = "refs/tags/v0.4.1";
  
  
  inputs."argparse".url = "path:../../../a/argparse";
  inputs."argparse".type = "github";
  inputs."argparse".owner = "riinr";
  inputs."argparse".repo = "flake-nimble";
  inputs."argparse".ref = "flake-pinning";
  inputs."argparse".dir = "nimpkgs/a/argparse";

  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  
  inputs."parsetoml".url = "path:../../../p/parsetoml";
  inputs."parsetoml".type = "github";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".repo = "flake-nimble";
  inputs."parsetoml".ref = "flake-pinning";
  inputs."parsetoml".dir = "nimpkgs/p/parsetoml";

  outputs = { self, nixpkgs, src-changer-v0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-changer-v0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-changer-v0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}