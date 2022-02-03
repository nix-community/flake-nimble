{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
  inputs.src-nimterop-v0_1_0.flake = false;
  inputs.src-nimterop-v0_1_0.type = "github";
  inputs.src-nimterop-v0_1_0.owner = "genotrance";
  inputs.src-nimterop-v0_1_0.repo = "nimterop";
  inputs.src-nimterop-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-nimterop-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimterop-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}