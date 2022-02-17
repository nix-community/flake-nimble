{
  description = ''Executable for finding information about programs in PATH'';
  inputs.src-about-v0_1_1.flake = false;
  inputs.src-about-v0_1_1.type = "github";
  inputs.src-about-v0_1_1.owner = "aleandros";
  inputs.src-about-v0_1_1.repo = "about";
  inputs.src-about-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-about-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-about-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-about-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}