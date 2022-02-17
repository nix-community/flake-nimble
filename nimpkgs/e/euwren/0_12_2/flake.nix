{
  description = ''High-level Wren wrapper'';
  inputs.src-euwren-0_12_2.flake = false;
  inputs.src-euwren-0_12_2.type = "github";
  inputs.src-euwren-0_12_2.owner = "liquid600pgm";
  inputs.src-euwren-0_12_2.repo = "euwren";
  inputs.src-euwren-0_12_2.ref = "refs/tags/0.12.2";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-euwren-0_12_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-euwren-0_12_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-euwren-0_12_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}